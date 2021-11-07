<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>

<body>
	<!-- 디렉티브 태그의 include를 사용하여 JSP 페이지의 특정 영역에 다른 문서를 포함 -->
	<!-- 즉, 웹 페이지의 <header> 및 <nav> 부분만 가지고 있는 JSP 파일 호출-->
	<%@ include file="menu.jsp" %>
	
	
	   <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold" ><br><br><br><br><br><br></h1>
                        <br><br>
                     <!--    <hr class="divider" />--> 
                    </div>
                  <div class="col-lg-8 align-self-baseline">
                    <!-- <p class="text-white-75 mb-5">부산을 대표하는 센트럴파크 "부산시민공원"에서 두근거리는 마음으로 당신을 기다립니다!</p>
                -->          <a class="btn btn-primary btn-xl" href="#about">피크닉 상점 소개</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">나른한 일요일... 뭐하지?? 그냥 공원에 피크닉이나 가야겠다!! <br><br>준비물은 어차피 모두 여기에 있으니깐 ~^^~</h2>
          
              <hr class="divider divider-light" />
                        <p class="text-white-75 mb-4">저희 상점은 부산시민공원을 대표하는 피크닉 렌탈 전문업체입니다. 저희는 고객님들이 부산 시민공원에서 나른한 피크닉을 보내실 수 있도록 모든 것을 준비하고 대여하고 있습니다. 고객님들은 가벼운 마음으로 저희 상점에 들리시거나 클릭 몇 번으로 저희 상점에서 당일 피크닉 제품을 렌탈하실 수 있습니다.</p>
                   
                     <a class="btn btn-light btn-xl" href="#portfolio">고객들의 리얼 포토 후기!</a>
                    </div>
                </div>
            </div>
        </section>
       
        <!-- Portfolio-->
        <div id="portfolio">
        <br><br>
           <h2 class="text-center mt-0">리얼 포토 후기</h2>
                <hr class="divider" />
        
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets/img/port/1.jpg" title="너무 좋았어요~힐링 데이뚜~">
                            <img class="img-fluid" src="./resources/assets/img/port/1.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">너무 좋았어요~</div>
                                <div class="project-name">정*하 고객님</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets/img/port/2.jpg" title="굿뜨 굿뜨~~ 싸고 좋아요~">
                            <img class="img-fluid" src="./resources/assets/img/port/2.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">굿뜨 굿뜨~~</div>
                                <div class="project-name">김*수 고객님</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets/img/port/3.jpg" title="즐거운 주말~~ 화창한 날씨~">
                            <img class="img-fluid" src="./resources/assets/img/port/3.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">즐거운 주말~~</div>
                                <div class="project-name">민*나 고객님</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets/img/port/4.jpg" title="또 이용할 것 같아요 ~ 좋음.ㅎㅎ">
                            <img class="img-fluid" src="./resources/assets/img/port/4.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">또 이용할 것 같아요</div>
                                <div class="project-name">박*랑 고객님</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets/img/port/5.jpg" title="부산의 얼굴~센트럴파크에서 한가로운 주말">
                            <img class="img-fluid" src="./resources/assets/img/port/5.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">부산의 얼굴~센트럴파크</div>
                                <div class="project-name">신*영 고객님</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets/img/port/6.jpg" title="이런 가게가 있는줄 몰랐네요~ 자주 이용할게요 ㅎㅎ">
                            <img class="img-fluid" src="./resources/assets/img/port/6.jpg" alt="..." />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">이런 가게가 있는줄 몰랐네요~</div>
                                <div class="project-name">솜*탕 고객님</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call to action-->
        <section class="page-section bg-dark text-white">
            <div class="container px-4 px-lg-5 text-center">
                <h2 class="mb-4">지금 바로 만나보세요♥</h2>
                <a class="btn btn-light btn-xl" href="/Picnic/products.jsp">상품 구경하러 가기</a>
            </div>
        </section>
	 
	  
</body>
</html>