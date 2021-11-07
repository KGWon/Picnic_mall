<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 

</head>
<body>	


	<%@ include file="menu.jsp" %>


	 <br><br><br><br>
<div class = "ddd" style="width:70% ; margin: 0 auto;"> 
	<table class="table table-hover"> <h2 >게시글 작성</h2>
		<form action="write.do" method="post">  
			<tr>
				<td>작성자</td><td><input type="text" name="bName" size="50" value="${sessionId}" >
				</td>
			</tr>
			<tr>
				<td>제목</td><td> <input type="text" name="bTitle" size="50">
				</td>
			</tr>
			<tr>
				<td>내용</td><td> <textarea name="bContent" style="width:60%" rows="10"></textarea>
				</td>
			</tr>
	
			<tr>
				<td colspan="2"><input type="submit" value="글 작성">
					&nbsp;&nbsp; <a href="list.do">목록보기</a></td>
			</tr>
		</form>
	</table>
</div>
</body>
</html>