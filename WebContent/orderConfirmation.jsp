<%@page import="java.io.Console"%>
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");

String cartId = session.getId();

String shipping_cartId = "";
String shipping_name = "";
String shipping_shippingDate = "";
String shipping_country = "";
String shipping_zipCode = "";
String shipping_addressName = "";

Cookie[] cookies = request.getCookies();

if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if (n.equals("Shipping_name"))
			shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if (n.equals("Shipping_shippingDate"))
			shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if (n.equals("Shipping_country"))
			shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if (n.equals("Shipping_zipCode"))
			shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if (n.equals("Shipping_addressName"))
			shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");

	}
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8"> 
</head>
<body>
	<jsp:include page="menu.jsp" />
	 <br><br><br><br>

	<div class="container col-8 alert alert-info" style="background-color:ivory; border-color:ivory;">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>예약자 정보</strong><br> 성명 :
				<%
				out.println(shipping_name);
				%><br> 휴대폰 번호 :
				<%
				out.println(shipping_zipCode);
				%><br> 
			</div>
			<div class="col-4" align="right">
				<p>
					<em>방문 예정일: <%
					out.println(shipping_shippingDate);
					%></em><br>
					<em>방문 예정 시간 :
				<%
				out.println(shipping_addressName);
				%></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">
				<tr>
					<th class="text-center">상품명</th>
					<th class="text-center">수량</th>
					<th class="text-center">가격</th>
					<th class="text-center">소계</th>
				</tr>
				<%
				int sum = 0;
				ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
				if (cartList == null)
					cartList = new ArrayList<Product>();
				for (int i = 0; i < cartList.size(); i++) { //상품 리스트 하나씩 출력
					Product product = cartList.get(i);
					int total = product.getUnitPrice() * product.getQuantity();
					sum += total;
				%>
				<tr>
					<td class="text-center"><em><%=product.getPname()%></em></td>
					<td class="text-center"><%=product.getQuantity()%></td>
					<td class="text-center"><%=product.getUnitPrice()%></td>
					<td class="text-center"><%=total%>원</td>
				</tr>
				<%
				}
				%>
				<tr>
					<td></td>
					<td></td>
					<td class="text-right"><strong>총액:</strong></td>
					<td class="text-center text-danger"><strong><%=sum%></strong></td>
				</tr>
			</table>

			<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>"
				class="btn btn-secondary" role="button">이전</a> <a
				href="./thankCustomer.jsp" class="btn btn-success" role="button">주문
				완료</a> <a href="./checkOutCancelled.jsp" class="btn btn-secondary"
				role="button">취소</a>
		</div>
	</div>
</body>
</html>