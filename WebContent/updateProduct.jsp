<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>상품 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<br><br><br><br>
	<%@include file="dbconn.jsp" %>
	<%
		String productId = request.getParameter("id");
	
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		String sql = "select * from product where p_id = ?";
		preparedStatement = conn.prepareStatement(sql);
		preparedStatement.setString(1, productId);
		resultSet = preparedStatement.executeQuery();
		if(resultSet.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img alt="image" src="./resources/images/<%=resultSet.getString("p_fileName")%>" style="width: 100%" />
			</div>
			<div class="col-md-7">
				<form name="newProduct" action="./processUpdateProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
				<div class="form-group row">
					<label class="col-sm-2">상품 코드</label>
					<div class="col-sm-3">
						<input type="text" id="productId" name="productId" class="form-control" value="<%=resultSet.getString("p_id")%>">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품명</label>
					<div class="col-sm-3">
						<input type="text" id="pname" name="pname" class="form-control" value="<%=resultSet.getString("p_name")%>">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">가격</label>
					<div class="col-sm-3">
						<input type="text" id="unitPrice" name="unitPrice" class="form-control" value="<%= resultSet.getString("p_unitPrice")%>">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상세 설명</label>
					<div class="col-sm-5">
						<textarea name="description" rows="2" cols="50" class="form-control"<%=resultSet.getString("p_description") %>></textarea>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">제조국</label>
					<div class="col-sm-3">
						<input type="text" name="manufacturer" class="form-control" value="<%=resultSet.getString("p_manufacturer")%>"> 
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">분류</label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control" value="<%=resultSet.getString("p_category")%>">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">재고 수</label>
					<div class="col-sm-3">
						<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" value="<%=resultSet.getLong("p_unitsInStock")%>">
					</div>
				</div>
			<!--  	<div class="form-group row">
					<label class="col-sm-2">상태</label>
					<div class="col-sm-5">
						<input type="radio" name="condition" value="New ">상
						<input type="radio" name="condition" value="Old ">중
						<input type="radio" name="condition" value="Refurbished ">하
					</div>
				</div>-->
				<div class="form-group row">
					<label class="col-sm-2">이미지</label>
					<div class="col-sm-5">
						<input type="file" name="productImage" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="등록">
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	<%
		}
		if(resultSet != null) resultSet.close();
		if(preparedStatement != null) preparedStatement.close();
		if(conn != null) conn.close();
	%>
</body>
</html>