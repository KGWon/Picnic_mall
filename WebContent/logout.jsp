<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 페이지</title>
</head>
<body>
	<%-- session.invalidate(): 설정된 세션의 값들을 모두 삭제 --%>
	<%-- 로그아웃 기능 완료 후 addProduct.jsp 페이지로 이동 --%>
	<%
		session.invalidate();
		response.sendRedirect("addProduct.jsp");
	%>
</body>
</html>