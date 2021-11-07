<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
	String sessionId = (String)session.getAttribute("sessionId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 완료</title>
</head>
<body>
	<%
		String shipping_cartId = "";
		String shipping_name = "";
		String shipping_shippingDate = "";
		String shipping_country = "";
		String shipping_zipCode = "";
		String shipping_addressName = "";
		
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if(n.equals("Shipping_cartId")) shipping_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
				if(n.equals("Shipping_shippingDate")) shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			}
		}
	%>
	
	<jsp:include page="menu.jsp" />
	 <br><br><br><br><br>
	<div class="container">
		<h2 class="alert alert-danger">고객님, 저희 상점을 이용해주셔서 감사드립니다.</h2>
		<br>
		<p>주문번호 : <% out.println(shipping_cartId); %></p><br>
	</div>
	<div class="container">
		<p><a href="./products.jsp" class="btn btn-secondary">&laquo; 상품 목록</a>
	</div>
</body>
</html>

<%
	session.invalidate();
	
	for(int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("Shipping_cartId")) thisCookie.setMaxAge(0);
		if(n.equals("Shipping_name")) thisCookie.setMaxAge(0);
		if(n.equals("Shipping_shippingDate")) thisCookie.setMaxAge(0);
		if(n.equals("Shipping_country")) thisCookie.setMaxAge(0);
		if(n.equals("Shipping_zipCode")) thisCookie.setMaxAge(0);
		if(n.equals("Shipping_addressName")) thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>