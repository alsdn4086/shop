<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
	function check(){
		if(joinpage.name.value == ""){
			joinpage.name.focus();
			alert("이름을 입력해주세요");
			return false;
		}
		else if(joinpage.id.value == ""){
			joinpage.id.focus();
			alert("아이디를 입력해주세요");
			return false;
		}
		else if(joinpage.pw.value == ""){
			joinpage.pw.focus();
			alert("비밀번호를 입력해주세요");
			return false;
		}
		else{
			alert("회원가입 완료!");
			return join.do;
		}
	}
</script>
<style>
p {
	text-align: left;
	margin: 0;
}
</style>
<link rel="stylesheet" href="resources/css/loginpage.css">
</head>
<body class="align">
	<div class="grid">
		<form name="joinpage" method="post" class="form login">
			<header class="login__header">
				<p text-align="left">
					<a href="index.do">메인으로</a>
					|
					<a href="loginpage.do">로그인</a>
				</p>
				<h3 class="login__title">JOIN</h3>
			</header>
			<div class="login__body">
				<div class="form__field">
					<input type="text" placeholder="NAME" name="user_name" required>
				</div>
				<div class="form__field">
					<input type="text" placeholder="ID" name="user_id" required>
				</div>
				<div class="form__field">
					<input type="password" placeholder="Password" name="uesr_pw"
						required>
				</div>
			</div>
			<footer class="login__footer">
				<input type="button" onclick="check()" value="회원가입">
			</footer>
		</form>
	</div>
</body>
</html>