<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.ProductRepository"%>
<%@ page import="dto.Product" %>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css" />
</head>

<body>
	<!-- 디렉티브 태그 - JSP 페이지를 어떻게 처리할 것인지를 설정하는 태그 -->
	<!-- include - JSP 페이지의 특정 영역에 다른 문서를 포함 -->
	<jsp:include page="menu.jsp"></jsp:include>
	 <br><br><br><br>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pStatement = null;
				ResultSet resultSet = null;
				String sql = "select * from product";
				pStatement = conn.prepareStatement(sql);
				resultSet = pStatement.executeQuery();
				while(resultSet.next()) {
			%>
			<div class="col-md-4">
				<img src="./resources/images/<%=resultSet.getString("p_fileName") %>" alt="<%=resultSet.getString("p_fileName") %>" style="width: 100%"/>
				<h3><%= resultSet.getString("p_name") %></h3>
				<p><%= resultSet.getString("p_description")%></p>
				<p><%= resultSet.getString("p_UnitPrice")%>원</p>
				<p><a href="./product.jsp?id=<%=resultSet.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a></p>
			</div>
			<%
				}
				if(resultSet != null) resultSet.close();
				if(pStatement != null) pStatement.close();
				if(conn != null) conn.close();
			%>
		</div> 
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>