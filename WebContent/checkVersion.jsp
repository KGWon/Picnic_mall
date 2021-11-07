<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 내가 사용하고 있는 버전 확인</title>
</head>
<body>
	<!-- Server 버전 -->
	<p><%= application.getServerInfo()%></p>
	<!-- 서블릿 버전 -->
	<p><%= application.getMajorVersion()%></p>
	<!-- JSP 버전 -->
	<p><%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion()%></p>	
</body>
</html>