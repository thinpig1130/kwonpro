<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>세종시 프로그래머 온라인 허브</title>
    <meta charset="UTF-8">

    <link href="/css/layout.css" type="text/css" rel="stylesheet" />
    <link href="/css/index.css" type="text/css" rel="stylesheet" />
</head>
<body>
<!-- header 부분 -->
    <header id="header">
        
        <div class="content-container">
            <!-- ---------------------------<header>--------------------------------------- -->

            <h1 id="logo">
                <a href="/index.do">
                    <img src="/images/logo.png" alt="KwonPro 온라인" />
                </a>
            </h1>

            <section>
                <h1 class="hidden">헤더</h1>

                <nav id="main-menu">
                    <h1>메인메뉴</h1>
                    <ul>
                        <li><a href="">모임가이드</a></li>

                        <li><a href="">모임선택</a></li>
                        <li><a href="">AnswerIs</a></li>
                    </ul>
                </nav>

                <div class="sub-menu">

                    <section id="search-form">
                        <h1>강좌검색 폼</h1>
                        <form action="">
                            <fieldset>
                                <legend>모임검색필드</legend>
                                <label>모임검색</label>
                                <input type="text" name="q" value="" />
                                <input type="submit" value="검색" />
                            </fieldset>
                        </form>
                    </section>

                    <nav id="acount-menu">
                        <h1 class="hidden">회원메뉴</h1>
                        <ul>
                            <li><a href="/index.do">HOME</a></li>
                            <li><a href="">로그인</a></li>
                            <li><a href="">회원가입</a></li>
                        </ul>
                    </nav>

                    <nav id="member-menu" class="linear-layout">
                        <h1 class="hidden">고객메뉴</h1>
                        <ul class="linear-layout">
                            <li><a href=""><img src="/images/txt-mypage.png" alt="마이페이지" /></a></li>
                            <li><a href="/nlist.do"><img src="/images/txt-customer.png" alt="고객센터" /></a></li>
                        </ul>
                    </nav>

                </div>
            </section>

        </div>
        
    </header>

<!-- --------------------------- <body> --------------------------------------- -->

    <!-- content 부분 -->
    <div id="visual" class="">
        <div class="content-container">
            <h2 class="hidden">신규 강좌목록</h2>

            <ul class="banner">


                <li class="banner1">
                    <a href="">
                        <img src="admin/board/event/1/banner-java.png" data-id="1" style="cursor: pointer;" />
                    </a>
                </li>

            </ul>



            <ul class="banner-button-list" style="color:#ffff00; font-size:20px;position:absolute; left:10px; bottom:5px; z-index: 100px; display: flex; flex-direction: row;">
                <li></li>
            </ul>

        </div>

    </div>
    <div id="notice">
        <div class="content-container">
            <span class="title">전문가를 더욱 전문가 답게 <span style="color:yellow;font-size:15px;"> IT PROFESSIONAL <span style="color:#00ffff;">HUB</span>
                    ONLINE <span style="color:#00ffff;">KWONPRO</span> STUDY MEETING</span></span>
            <!--<a class="detail-button">자세히</a>-->
        </div>
    </div>
    <!-- ----- 공지사항 줄 ------------------------------------------------------------------------------ -->
    <div id="information">
        <div class="content-container">
            <section class="guide">
                <h1 class="title">스터디 모임 참여방법 안내</h1>
                <div class="margin-top">
                    <a href=""><img src="images/customer/installInfo.png" /></a>
                </div>
            </section>
            <section class="course-info">
                <h1 class="title text-center"> 스터디원 모집 안내</h1>
                <ul class="list">
                    <li>현재 모집 과정이 없습니다.</li>
                </ul>
            </section>
            <section class="notice">
                <h1 class="title">공지사항</h1>
                <ul class="list margin-top">
					<c:forEach items="${list}" var="notice">
						<li>
							<span class="notice-title">
								<a href="ndetail.do?nid=${notice.id}">${notice.title}</a>
                        	</span>
                        	<span>${notice.simpledate}</span>
						</li>
					</c:forEach>
                </ul>
            </section>
        </div>
    </div>

<!-- ----- 커뮤니티 시작 줄 -------------------------------------------------------------------------------------------- -->


    <!-- ----- 강좌 목록 시작 줄 --------------------------------------------------------------------------------------------------------- -->
    <main id="course">
        <section class="content-container list list-horizontal list-course list-course-index">
            <h1>온라인 <span class="color-orange">단기 스터디 과정</span></h1>
            <div>
               
            </div>

            <ul>
                <li class="item-course normal event">
                    <div>
                        <a href=""><img src="images/course/java.png" /></a>                        
                    </div>
                    <div>
                        <div>
                            <a href=""><span class="text-strong text-ellipsis">자바 프로그래밍</span></a>
                        </div>
                        <div class="price">
                            <span class="normal deprecated">
                                <span class="text-gray">
                                    22,000
                                </span> 원
                            </span> <span class="event">


                                <span class="color-red text-strong">
                                    0
                                </span>원


                            </span>
                        </div>
                        <div class="footer text-strong">
                            <span class="writer">선생님 : newlec </span>
                            <span class="update">개설일 : 2019-09-07
                            </span>
                        </div>
                    </div>
                </li>


            </ul>

            <div class="more">
                <!-- <span class="border padding">단과 과정 목록 더보기</span> -->
            </div>
        </section>

 <!-- ------- 온라인 패키지 과정 ------------------------------------------------------------------------------------------------- -->

        <div class="content-container">
            <h3 class="-text- center green bold -margin- top">협력기관</h3>
            <ul class="-list- horizontal center -margin- bottom top b20">
                <li><a target="_blank" href="http://www.tjvision.co.kr"><img src="/images/tjvision.png" alt="비젼직업전문학교" /></a></li>
                <li><a target="_blank" href="https://www.sejongcommunity.com"><img src="/images/sejongcommunity.png" alt="세종시 마을공동체지원센터" /></a></li>                
            </ul>
        </div>
    </main>
   
    <!-- ------------------- <footer> --------------------------------------- -->

    <footer id="footer">
        <div class="content-container">
            <h2 id="footer-logo"><img src="/images/logo-footer.png" alt="모임정보"></h2>

            <div id="company-info">
                <dl>
                    <dt>주소:</dt>
                    <dd>세종특별자치시 도움3로 160</dd>
                    <dt>관리자메일:</dt>
                    <dd>thinpig1130@gmail.com</dd>
                </dl>
                <dl>
                    <dt>사업자 등록번호:</dt>
                    <dd>111-11-11111</dd>
                    <dt>비영리 단체:</dt>
                    <dd>세종시마을공동체 143호</dd>
                </dl>
                <dl>
                    <dt>공동체명:</dt>
                    <dd>세종시프로그래머모임</dd>
                    <dt>대표:</dt>
                    <dd>권다애</dd>
                    <dt>전화번호:</dt>
                    <dd>010-4191-####</dd>
                </dl>
                <div id="copyright" class="margin-top">Copyright ⓒ kwonpro.lec 2020-2020 All Right Reserved.
                    Contact thinpig1130@gmail.com for more information</div>
            </div>
        </div>
    </footer>

</body>
</html>