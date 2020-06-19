<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>세종시 프로그래머 온라인 허브</title>
    <meta charset="UTF-8">
    
    <link href="/css/customer/layout.css" type="text/css" rel="stylesheet" />
    <style>
        #visual .content-container{	
            height:inherit;
            display:flex; 
            align-items: center;
            background: url("../../images/customer/visual.png") no-repeat center;
        }
    </style>
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
                        <li><a href="/warn.html">모임가이드</a></li>

                        <li><a href="/warn.html">모임선택</a></li>
                        <li><a href="/warn.html">AnswerIs</a></li>
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

	<!-- --------------------------- <visual> --------------------------------------- -->
	<!-- visual 부분 -->
	
	<div id="visual">
		<div class="content-container"></div>
	</div>
	<!-- --------------------------- <body> --------------------------------------- -->
	<div id="body">
		<div class="content-container clearfix">

			<!-- --------------------------- aside --------------------------------------- -->
			<!-- aside 부분 -->


			<aside class="aside">
				<h1>Online 연구소</h1>

				<nav class="menu text-menu first margin-top">
					<h1>메뉴</h1>
					<ul>
						<li><a class="current"  href="/nlist.do">공지사항</a></li>
						<li><a class=""  href="/warn.html">자주하는 질문</a></li>
						<li><a class="" href="/warn.html">모임문의</a></li>
						<li><a class="" href="/warn.html">이벤트/번개</a></li>
					</ul>
				</nav>


	<nav class="menu">
		<h1>협력기관</h1>
		<ul>
			<li><a target="_blank" href="http://www.tjvision.co.kr"><img src="/images/tjvision.png" alt="비젼직업전문학교" /></a></li>
            <li><a target="_blank" href="https://www.sejongcommunity.com"><img src="/images/sejongcommunity.png" alt="세종시 마을공동체지원센터" /></a></li>                
            			
		</ul>
	</nav>
					
			</aside>
			<!-- --------------------------- main --------------------------------------- -->



			<main>
                <h2 class="main title">공지사항 등록</h2>

                <div class="breadcrumb">
                    <h3 class="hidden">breadlet</h3>
                    <ul>
                        <li>home</li>
                        <li>게시글 관리</li>
                        <li>공지사항</li>
                    </ul>
                </div>

                <form method="post" action="nupdate.do" >
                    <div class="margin-top first">
                    	<input type="hidden" name="id" value="${notice.id}">
                    	<input type="hidden" name="file" value="${notice.files}">
                                    	
                        <h3 class="hidden">공지사항 입력</h3>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>제목</th>
                                    <td class="text-align-left text-indent text-strong text-orange" colspan="3">
                                        <input type="text" name="title" value="${notice.title}"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th>첨부파일</th>
                                    <td colspan="3" class="text-align-left text-indent"><input type="file"
                                            name="newfile"/> </td>
                                </tr>
                                <tr class="content">
                                    <td colspan="4"><textarea class="content" name="content">${notice.content}</textarea></td>
                                </tr>
                                <tr>
                                    <td colspan="4" class="text-align-right"><input class="vertical-align" type="checkbox" id="open" name="open" value="true"><label for="open" class="margin-left">바로공개</label> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="margin-top text-align-center">
                        <input class="btn-text btn-default" type="submit" value="등록" />
                        <a class="btn-text btn-cancel" href="ndetail.do?nid=${notice.id}">취소</a>
                    </div>
                </form>

            </main>
		
			
		</div>
	</div>

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