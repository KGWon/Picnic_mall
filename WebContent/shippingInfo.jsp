<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>배송 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<br><br><br><br><br>
	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%= request.getParameter("cartId")%>" />
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">방문예정일</label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control" />(2021/O월/O일)
				</div>
			</div>
				<div class="form-group row">
				<label class="col-sm-2">방문예정시간</label>
				<div class="col-sm-3">
					<input name="addressName" type="text" class="form-control" />(오전/오후 O시)
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control" />
				</div>
			</div>
		<div class="form-group row">
				<label class="col-sm-2">남기실 말씀</label>
				<div class="col-sm-5">
					<input name="country" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
				<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button">이전</a>
				<input type="submit" class="btn btn-primary" value="등록" />
				<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>