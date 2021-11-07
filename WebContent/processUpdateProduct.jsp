<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@include file="dbconn.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정 처리</title>
</head>
<body>
	<%
		String filename = "";
		String realFolder = "C:/JSP_workspace (2)/beforqna (5)/WebMarket/WebContent/resources/images";
		String encType = "utf-8";
		int maxSize = 5 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		String productId = multi.getParameter("productId");
		String pname = multi.getParameter("pname");
		String unitPrice = multi.getParameter("unitPrice");
		String description = multi.getParameter("description");
		String manufacturer = multi.getParameter("manufacturer");
		String category = multi.getParameter("category");
		String unitsInStock = multi.getParameter("unitsInStock");
		String condition = multi.getParameter("condition");
		
		Integer price;
		
		if(unitPrice.isEmpty()) price = 0;
		else price = Integer.valueOf(unitPrice);
		
		long stock;
		
		if(unitsInStock.isEmpty()) stock = 0;
		else stock = Long.valueOf(unitsInStock);
		
		Enumeration files = multi.getFileNames();
		String fname = (String)files.nextElement();
		String fileName = multi.getFilesystemName(fname);
		
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		String sql = "select * from product where p_id = ?";
		preparedStatement = conn.prepareStatement(sql);
		preparedStatement.setString(1, productId);
		resultSet = preparedStatement.executeQuery();
		
		if(resultSet.next()) {
			if(fileName != null) {
				sql = "update product set p_name = ?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitsInStock=?, p_condition=?, p_fileName=? WHERE p_id=?";
				preparedStatement = conn.prepareStatement(sql);
				preparedStatement.setString(1, pname);
				preparedStatement.setInt(2, price);
				preparedStatement.setString(3, description);
				preparedStatement.setString(4, manufacturer);
				preparedStatement.setString(5, category);
				preparedStatement.setLong(6, stock);
				preparedStatement.setString(7, condition);
				preparedStatement.setString(8, fileName);
				preparedStatement.setString(9, productId);
				preparedStatement.executeUpdate();
			} else {
				sql = "update product set p_name = ?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitsInStock=?, p_condition=? WHERE p_id=?";
				preparedStatement = conn.prepareStatement(sql);
				preparedStatement.setString(1, pname);
				preparedStatement.setInt(2, price);
				preparedStatement.setString(3, description);
				preparedStatement.setString(4, manufacturer);
				preparedStatement.setString(5, category);
				preparedStatement.setLong(6, stock);
				preparedStatement.setString(7, condition);
				preparedStatement.setString(8, productId);
				preparedStatement.executeUpdate();
			}
		}
		if(resultSet != null) resultSet.close();
		if(preparedStatement != null) preparedStatement.close();
		if(conn != null) conn.close();
		
		response.sendRedirect("editProduct.jsp?edit=update");
	%>
</body>
</html>