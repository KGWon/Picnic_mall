<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="dbconn.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 삭제</title>
</head>
<body>
	<%
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
	
		String productId = request.getParameter("id");
	
		String sql = "select * from product";
		preparedStatement = conn.prepareStatement(sql);
		resultSet = preparedStatement.executeQuery();
		
		if(resultSet.next()) {
			sql = "delete from product where p_id = ?";
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, productId);
			preparedStatement.executeUpdate();
		} else out.println("일치하는 상품이 없습니다.");
		
		if(resultSet != null) resultSet.close();
		if(preparedStatement != null) preparedStatement.close();
		if(conn != null) conn.close();
		
		response.sendRedirect("editProduct.jsp?edit=delete");
	%>
</body>
</html>