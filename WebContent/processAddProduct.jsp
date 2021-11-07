<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@include file="dbconn.jsp" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<%
		request.setCharacterEncoding("utf-8");
	
		String realFolder = "C:/JSP_workspace (2)/beforqna (5)/WebMarket/WebContent/resources/images"; //웹 어플리케이션상의 절대 경로
		String encType = "utf-8"; //인코딩 타입
		int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		
		/* 신규 상품의 입력 데이터를 가져옴 */
	 	String productId = multi.getParameter("productId");		// 상품 아이디
	 	String pname = multi.getParameter("pname");				// 상품명
	 	String unitPrice = multi.getParameter("unitPrice");		// 상품 가격
	 	String description = multi.getParameter("description");	// 상품 설명
	 	String manufacturer = multi.getParameter("manufacturer");	// 제조사
	 	String categoty = multi.getParameter("categoty");			// 분류
	 	String unitsInStock = multi.getParameter("unitsInStock");	// 재고 수
	 	String condition = multi.getParameter("condition");		// 신상품 or 중고품 or 재생품
	 	
	 	/* 상품 가격 유효성 검사 */
	 	Integer price;
	 	if(unitPrice.isEmpty()) price = 0;
	 	else price = Integer.valueOf(unitPrice);
	 	
	 	/* 재고 수 유효성 검사 */
	 	long stock;
	 	
	 	if(unitsInStock.isEmpty()) stock = 0;
	 	else stock = Long.valueOf(unitsInStock);
	 	
	 	Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		String fileName = multi.getFilesystemName(fname);
		
		PreparedStatement preparedStatement = null;
		String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
		preparedStatement = conn.prepareStatement(sql);
		preparedStatement.setString(1, productId);
		preparedStatement.setString(2, pname);
		preparedStatement.setInt(3, price);
		preparedStatement.setString(4, description);
		preparedStatement.setString(5, categoty);
		preparedStatement.setString(6, manufacturer);
		preparedStatement.setLong(7, stock);
		preparedStatement.setString(8, condition);
		preparedStatement.setString(9, fileName);
		preparedStatement.executeUpdate();
		
		if(preparedStatement != null) preparedStatement.close();
		if(conn != null) conn.close();
	 	
	 	/* 신규 제품의 데이터 추가를 마친 후 products.jsp 페이지로 강제 이동 */
	 	response.sendRedirect("./products.jsp");
	%>