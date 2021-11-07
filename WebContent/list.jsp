<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head> 
        

</head>
<body>	

	<%@ include file="menu.jsp" %>



	 <br><br><br><br> 

<!--  
	<c:set var="Modify_Result" value="${Modify_Result}" />
	<c:choose>
		<c:when test="${Modify_Result eq 1}">
			<script language="javascript">
				alert("Modify Success");
			</script>
			<c:remove var="Modify_Result" />
		</c:when>
		<c:when test="${Modify_Result eq 0}">
			<script language="javascript">
				alert("권한이 없습니다.");
			</script>
			<c:remove var="Modify_Result" />
		</c:when>
	</c:choose>

	<c:set var="Delete_Result" value="${Delete_Result}" />
	<c:choose>
		<c:when test="${Delete_Result eq 1}">
			<script language="javascript">
				alert("Delete Success");
			</script>
			<c:remove var="Delete_Result" />
		</c:when>
		<c:when test="${Delete_Result eq 0}">
			<script language="javascript">
				alert("권한이 없습니다.");
			</script>
			<c:remove var="Delete_Result" />
		</c:when>
	</c:choose>-->
	<!--  <section id="four" class="main">-->
	<div class = "ddd" style="width:70% ; margin: 0 auto;"> 
	<!--  <div class="container">
		<div class="content">
			<section>-->

		<!--  	<div class="table-wrapper">--> 
			<div style="padding-top: 50px">
				<table class="table table-hover"> 
				<tr> <td></td><td></td><td></td><td></td><td><a href="write_view.do"><b>글작성</b> </a></td></tr>
						<tr>
							<th>No.</th>
							<th>작성자</th>
							<th>제목</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
				<!--  	</thead> -->
						<c:forEach items="${list}" var="dto">
							<tr>
								<td>${dto.bId}</td>
								<td>${dto.bName}</td>
								<td><c:forEach begin="1" end="${dto.bIndent}">Re : </c:forEach>
									<a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a></td>
								<td>${dto.bDate}</td>
								<td>${dto.bHit}</td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="5"><b><a href="write_view.do">글작성</a></b></td>
						</tr> 
			</table>
			</div>
			<!-- </section>
		</div>
	</div> </div>-->
<!-- 	</section> -->

</body>
</html>