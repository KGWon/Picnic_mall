<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String)session.getAttribute("sessionId");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>센트럴파크 피크닉 상점</title>
        
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
     
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        
       
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
<link rel="stylesheet" href="./resources/css/styles.css">



  <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

<!--<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR:wght@500&display=swap" rel="stylesheet">
<style>
*{font-family: 'Noto Sans KR', sans-serif;}
</style>  -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<style>
*{
font-family: 'IBM Plex Sans KR', sans-serif;

}
</style>



</head>
<body>



   <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/Picnic/welcome.jsp">센트럴파크 피크닉 상점</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                      	<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/loginMember.jsp" />'>로그인</a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/addMember.jsp"/>'>회원 가입</a></li>
					</c:when>
					<c:otherwise> 
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/logoutMember.jsp" />'>로그아웃</a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/updateMember.jsp" />'>마이페이지</a></li>
					</c:otherwise>
				</c:choose>
					<li class="nav-item"><a class="nav-link" href="/Picnic/products.jsp">상품 목록</a></li>
					<li class="nav-item"><a class="nav-link" href="/Picnic/admin.jsp">관리자</a></li>
					<li class="nav-item"><a class="nav-link" href="/Picnic/list.do">Q&A게시판</a></li>
			<!--  		'<c:url value="/BoardListAction.do?pageNum=1" />'-->
					<li class="nav-item"><a class="nav-link" href="/Picnic/cart.jsp" ><img src="./resources/assets/img/carticon2.png" style="weight:20px; height:20px"></a></li>
					
					
                    </ul>
                </div>
            </div>
        </nav>


</body>
</html>