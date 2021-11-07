<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시물</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<br><br><br><br>
	<div class = "ddd" style="width:70% ; margin: 0 auto;"> 
	<table class="table table-hover">
			<h2>게시물 조회</h2>
			<form action="Bmodify.do" method="post">
				<input type="hidden" name="bId" value="${content_view.bId}" /> 
				<tr>
				<td>작성자 </td><td><input
					type="text" name="bName" value="${content_view.bName}"  size="50" readonly/></td>
			</tr>
			<tr><td>제목 </td><td> 
						<input type="text" name="bTitle" value="${content_view.bTitle}" size="50"
							placeholder="Title" readonly /></td>
				 </tr>
				 <tr><td>내용 </td><td> 
				 
						<textarea name="bContent" rows="10" style="width:80%" readonly>${content_view.bContent}</textarea>
			 </td></tr></table>
			<span style="color:white;">		<input type="submit" value="수정" class="button"  style="width:70px; height:30px;"> 
		...	 <input type="submit" value="삭제" class="button" style="width:70px; height:30px;">  </span>
			

	<!-- 		<form action="delete.do" method="post">
				<input type="hidden" name="bId" value="${content_view.bId}" /> <input
					type="hidden" name="name" value="${name}" /> <input type="submit"
					value="삭제" class="button" style="width:70px;">  
			</form>	 -->	<br><br>
			
			</form>
			<span style ="font-size:20px;"><a href="/Picnic/reply_view.do?bId=${content_view.bId}" class="button">관리자 답변 남기기</a>  |	 <a 	href="list.do" class="button">목록보기</a></span>	
</div>
 
 

</body>
</html>