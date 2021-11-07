<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page errorPage="exceptionNoProductId.jsp" %>
<%@ include file="dbconn.jsp" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css">
<script type="text/javascript">
	function addToCart() {
		if(confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
			alert("상품이 장바구니에 추가되었습니다");
		} else {
			document.addForm.reset();
		}
	}
</script>

</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
 <br><br><br><br><br>
	<%
		String productId = request.getParameter("id");
	
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String sql = "select * from product where p_id=?";
		preparedStatement = conn.prepareStatement(sql);
		preparedStatement.setString(1, productId);
		resultSet = preparedStatement.executeQuery();
		
		if(resultSet.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=resultSet.getString("p_fileName") %>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3><%=resultSet.getString("p_name")%></h3>
				<p><%=resultSet.getString("p_description") %></p>
				<p><b>상품 코드</b> : <span class="badge bg-danger"> <%=resultSet.getString("p_id") %></span></p>
				<p><b>제조국</b> : <%=resultSet.getString("p_manufacturer") %></p>
				<p><b>분류</b> : <%=resultSet.getString("p_category") %></p>
				<p><b>재고</b> : <%=resultSet.getLong("p_unitsInStock") %></p>
				<h4><%=resultSet.getInt("p_unitPrice") %>원</h4>
				<p><form name="addForm" action="./addCart.jsp?id=<%= resultSet.getString("p_id")%>" method="post">
					<a href="#" class="btn btn-secondary" onclick="addToCart()">상품 주문 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-secondary">장바구니 &raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
				</form>
			</div>
		</div> 
	</div>
	<%
		}
	%>
 
</body>
</html>