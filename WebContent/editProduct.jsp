<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>상품 편집</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if(confirm("해당 상품을 삭제합니다!!") == true) location.href = "./deleteProduct.jsp?id=" + id;
		else return;
	}
</script>
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 편집</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				
				String sql = "select * from product";
				preparedStatement = conn.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				while(resultSet.next()) {
			%>
			<div class="col-md-4">
			<img alt="<%=resultSet.getString("p_fileName")%>" src="./resources/images/<%=resultSet.getString("p_fileName")%>" style="width: 100%">
			<h3><%=resultSet.getString("p_name") %></h3>
			<p><%=resultSet.getString("p_description") %>
			<p><%=resultSet.getString("p_UnitPrice") %>원
			<p><%
				if(edit.equals("update")) {
				%>	
				<a href="./updateProduct.jsp?id=<%=resultSet.getString("p_id")%>" class="btn btn-success" role="button">수정 &raquo;</a>
				<% 
					} else if(edit.equals("delete")) {
				%>
				<a href="#" onclick="deleteConfirm('<%=resultSet.getString("p_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;</a>
				<%
					}
				%>
			</div>
			<%
				}
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(conn != null) conn.close();
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>