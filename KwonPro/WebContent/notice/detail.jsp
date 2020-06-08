<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <a href="/index.html">
                    <img src="/images/logo.png" alt="KwonPro 온라인" />
                </a>
            </h1>

            <section>
                <h1 class="hidden">헤더</h1>

                <nav id="main-menu">
                    <h1>메인메뉴</h1>
                    <ul>
                        <li><a href="/guide">모임가이드</a></li>

                        <li><a href="/course">모임선택</a></li>
                        <li><a href="/answeris/index">AnswerIs</a></li>
                    </ul>
                </nav>

                <div class="sub-menu">

                    <section id="search-form">
                        <h1>강좌검색 폼</h1>
                        <form action="/course">
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
                            <li><a href="/index.html">HOME</a></li>
                            <li><a href="/member/login.html">로그인</a></li>
                            <li><a href="/member/agree.html">회원가입</a></li>
                        </ul>
                    </nav>

                    <nav id="member-menu" class="linear-layout">
                        <h1 class="hidden">고객메뉴</h1>
                        <ul class="linear-layout">
                            <li><a href="/member/home"><img src="/images/txt-mypage.png" alt="마이페이지" /></a></li>
                            <li><a href="/notice/list.html"><img src="/images/txt-customer.png" alt="고객센터" /></a></li>
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
						<li><a class=""  href="/customer/faq">자주하는 질문</a></li>
						<li><a class="" href="/customer/question">모임문의</a></li>
						<li><a class="" href="/customer/event">이벤트/번개</a></li>
						
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
				<h2 class="main title">공지사항</h2>
				
				<div class="breadcrumb">
					<h3 class="hidden">breadlet</h3>
					<ul>
						<li>home</li>
						<li>고객센터</li>
						<li>공지사항</li>
					</ul>
				</div>
				
				<div class="margin-top first">
						<h3 class="hidden">공지사항 내용</h3>
						<table class="table">
							<tbody>
								<tr>
									<th>제목</th>
									<td class="text-align-left text-indent text-strong text-orange" colspan="3">${notice.title}스프링 8강까지의 예제 코드</td>
								</tr>
								<tr>
									<th>작성일</th>
									<td class="text-align-left text-indent" colspan="3">${notice.regdate}</td>
								</tr>
								<tr>
									<th>작성자</th>
									<td>${notice.writerId}</td>
									<th>조회수</th>
									<td>${notice.hit}</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td colspan="3">${notice.files}</td>
								</tr>
								<tr class="content">
									<td colspan="4">${notice.content}</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="margin-top text-align-center">
						<a class="btn btn-list" href="list.html">목록</a>
					</div>
					
					<div class="margin-top">
						<table class="table border-top-default">
							<tbody>
								
								<tr>
									<th>다음글</th>
									<td colspan="3"  class="text-align-left text-indent">다음글이 없습니다.</td>
								</tr>
								
									
								
								
								<tr>
									<th>이전글</th>
									<td colspan="3"  class="text-align-left text-indent"><a class="text-blue text-strong" href="">스프링 DI 예제 코드</a></td>
								</tr>
								
								
							</tbody>
						</table>
					</div>			
					
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