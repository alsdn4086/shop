<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/navbar_techandall.css">
<link rel="stylesheet" href="resources/css/button.css">
<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function check(){
		if(join.id.value == ""){
			join.id.focus();
			alert("아이디를 입력해주세요");
			return false;
		}
		else if(join.pw.value == ""){
			join.pw.focus();
			alert("비밀번호를 입력해주세요");
			return false;
		}
		else{
			alert("로그인 완료!");
			return login.do;
		}
	}
	function no(){
		alert("준비중입니다!");
		return false;
	}
	function login(){
		if(${sessionScope.id== null }){
			alert("로그인 후 이용하실 수 있습니다.");
			return location.href='loginpage.do';
		}
		else{
			return location.href='vegetablepage.do';
		}
	}
</script>
</head>
<body>
	<header>
		<center>
			<image src="resources/img/logo.png" width="500px" height="230px"">
		<c:choose>
			<c:when test="${!empty sessionScope.id}">
				<h2>${sessionScope.id }(${sessionScope.name })님환영합니다!</h2><button onclick="location.href='/logout.do'">로그아웃ㅤ</button>
				<h4><a href="shopping_basket.do">${sessionScope.id }(${sessionScope.name })님의장바구니</a></h4>
			</c:when>
			<c:when test="${empty sessionScope.id}">
				<table border="0">
					<tr>
						<td class="user">
							<button onclick="location.href='/loginpage.do'">로그인ㅤ</button>
						</td class="user">
						<td>
							<button onclick="location.href='/joinpage.do'">회원가입</button>
						</td>
					</tr>
				</table>
			</c:when>
		</c:choose>
		</center>
	</header>
	<nav>
		<div class="container">
			<div>
				<label class="mobile_menu" for="mobile_menu"> <span>Menu</span>
				</label> <input id="mobile_menu" type="checkbox">
				<ul class="nav">
					<li><a href="index.do"><i class="icon-home icon-large"></i></a></li>

					<li class="dropdown"><a href="#">재료</a>

						<div class="fulldrop">
							<div class="column">
								<ul>
									<li><a href="#" onclick="login()"><h3>채소</h3></a></li>
								</ul>
							</div>

							<div class="column">
								<ul>
									<li><a href="#" onclick="no();"><h3>정육</h3></a></li>
								</ul>
							</div>

							<div class="column">
								<ul>
									<li><a href="#" onclick="no();"><h3>양념류</h3></a></li>
								</ul>
							</div>

							<div class="column">
								<ul>
									<li><a href="#" onclick="no();"><h3>해산물</h3></a></li>
								</ul>
							</div>

							<div class="column">
								<ul>
									<li><a href="#" onclick="no();"><h3>면</h3></a></li>
								</ul>
							</div>

							<li class="dropdown"><a href="#">밀키트</a> <!----- Full Drop Down Name Ends Here ---->

								<!----- Full Drop Down Contents  Starts Here---->

								<div class="fulldrop">
									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>한식</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>일식</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>이탈리아식</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>중국식</h3></a></li>
										</ul>
									</div>
									<!----- Full Drop Down Contents  Ends  Here---->

								</div>
							<li class="dropdown"><a href="#">간식</a> <!----- Full Drop Down Name Ends Here ---->

								<!----- Full Drop Down Contents  Starts Here---->

								<div class="fulldrop">
									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>초콜릿</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>사탕</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>과자</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>젤리</h3></a></li>
										</ul>
									</div>
									<!----- Full Drop Down Contents  Ends  Here---->

								</div>
							<li class="dropdown"><a href="#">음료</a> <!----- Full Drop Down Name Ends Here ---->

								<!----- Full Drop Down Contents  Starts Here---->

								<div class="fulldrop">
									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>어린이용</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>차</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>음료수</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="#" onclick="no();"><h3>술</h3></a></li>
										</ul>
									</div>
									<!----- Full Drop Down Contents  Ends  Here---->

								</div>
	</nav>
</body>
</html>