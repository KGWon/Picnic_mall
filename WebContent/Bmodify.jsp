<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css_folder/assets/css/main.css" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="name" value="${name}" />
<c:if test="${param.bName ne name}">
	<%
		session.setAttribute("Modify_Result", 0);
			response.sendRedirect("list.do");
	%>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시물 수정</title>
</head>
<body>
	<section id="four" class="main">
		<div class="container">
			<div class="content">
				<section>
					<h4>게시물 수정</h4>
					<form action="BmodifyOK.do" method="post">
						<input type="hidden" name="bId" value="${param.bId}" /> <input
							type="hidden" name="bName" value="${name}" />
						<div class="row gtr-uniform">
							<div class="col-6 col-12-xsmall">
								<input type="text" name="bTitle" value="${param.bTitle}"
									placeholder="Title" />
							</div>

							<div class="col-12">
								<textarea name="bContent" placeholder="Content" rows="6">${param.bContent}</textarea>
							</div>

						</div>
						<input type="submit" value="수정" class="button"> <input
							type="reset" value="취소"
							onclick="javascript:window.location='list.do'" class=button>
					</form>
				</section>


			</div>
		</div>
	</section>

</body>
</html>