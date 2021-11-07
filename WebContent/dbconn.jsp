<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연결</title>
</head>
<body>
	<%
		Connection conn = null;
	
		try {
			String url = "jdbc:mariadb://localhost:3307/bootex";
			String user = "bootuser";
			String password = "12341234";
			
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch(SQLException e) {
			out.println("데이터베이스 연결이 실패했습니다.<br>");
			out.println("SQLException: " + e.getMessage());
			e.printStackTrace();
		}
	%>
</body>
</html>