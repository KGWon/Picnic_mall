<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Welcome</title> 
 
</head>

<body>
	<!-- 디렉티브 태그의 include를 사용하여 JSP 페이지의 특정 영역에 다른 문서를 포함 -->
	<!-- 즉, 웹 페이지의 <header> 및 <nav> 부분만 가지고 있는 JSP 파일 호출-->
	<%@ include file="menu.jsp" %> 

	<div class="j" style="text-align: center">
		<br><br><br><br><br>
	<p>	<a class="btn btn-primary btn-xl"  href="/Picnic/addProduct.jsp">상품 등록</a> </p>
	<p>	<a class="btn btn-primary btn-xl"   href="/Picnic/editProduct.jsp?edit=update">상품 수정</a> </p>
	<p>	<a class="btn btn-primary btn-xl"    href="/Picnic/editProduct.jsp?edit=delete">상품 삭제</a></p>
	</div>

	 
</body>
</html>