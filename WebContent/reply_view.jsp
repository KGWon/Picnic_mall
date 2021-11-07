<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css_folder/assets/css/main.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
</head>
<body>
	<%@ include file="menu.jsp" %>
	<br><br><br><br>
	  <div class = "ddd" style="width:70% ; margin: 0 auto;"> 
	<table class="table table-hover">
				<form action="reply.do" method="post">
					<input type="hidden" name="bId" value="${reply_view.bId}">
				 <input type="hidden" name="bGroup" value="${reply_view.bGroup}">
					<input type="hidden" name="bStep" value="${reply_view.bStep}">
					<input type="hidden" name="bIndent" value="${reply_view.bIndent}">
				 
					 <h2>답글 작성</h2>
					<tr>
				<td>작성자</td><td> <input type="text" name="bName" size="50" value = "관리자">
				</td>
			</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="bTitle"
							value="${reply_view.bTitle}" size="50"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea rows="10" name="bContent" style="width:60%;">${reply_view.bContent}</textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="답변"> <a
							href="list.do">목록</a></td>
					</tr>
				</form>
		 </table>
		 </div>



</body>
</html>