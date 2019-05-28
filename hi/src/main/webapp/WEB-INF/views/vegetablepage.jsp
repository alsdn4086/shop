<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
header {
	background-color: #6befb0;
}
*{
	margin:0%;
}
</style>
<meta charset="UTF-8">
<title>채소</title>
</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>
	<form name="vegetable" method="post">
		<div>
			<div style="float: left;">
				<div>
					<img src="resources/img/onion.jpg" height="250px;" width="250px;">
				</div>
				<div>무안 햇 양파 5kg</div>
				<br>
				<div>
					<b>6,900원</b>
				</div>
				<div>무료 배송📦</div>
				<div>
					<input type="number" min="1" max="100" name="onion"
						placeholder="수량" value="1"><input type="button" value="구매"
						onclick="check()">
				</div>
			</div>
			<div style="float: left; margin-left: 50px;">
				<div>
					<img src="resources/img/greenonion.jpg" height="250px;"
						width="250px;">
				</div>
				<div>건강한 흙에서 자란 흙 대파 1단</div>
				<br>
				<div>
					<b>1,480원</b>
				</div>
				<div>조건부 무료배송📦</div>
				<div>
					<input type="number" min="1" max="100" name="greenonion"
						placeholder="수량" value="1"><input type="button" value="구매"
						onclick="check()">
				</div>
			</div>
			<div style="float: left; margin-left: 50px;">
				<div>
					<img src="resources/img/garlic.jpg" height="250px;" width="250px;">
				</div>
				<div>18년 창녕 마늘 - 통마늘 1kg</div>
				<br>
				<div>
					<b>5,200원</b>
				</div>
				<div>무료배송📦</div>
				<div>
					<input type="number" min="1" max="100" name="garlic"
						placeholder="수량" value="1"><input type="button" value="구매"
						onclick="check()">
				</div>
			</div>
			<div style="float: left; margin-left: 50px;">
				<div>
					<img src="resources/img/beansprouts.jpg" height="250px;"
						width="250px;">
				</div>
				<div>친환경 무농약 산소 콩나물 1kg</div>
				<br>
				<div>
					<b>4,500원</b>
				</div>
				<div>무료배송📦</div>
				<div>
					<input type="number" min="1" max="100" name="beansprouts"
						placeholder="수량" value="1"><input type="button" value="구매"
						onclick="check()">
				</div>
			</div>
		</div>
		<div>
			<div style="float: left;">
				<div>
					<img src="resources/img/lettuce.jpg" height="250px;" width="250px;">
				</div>
				<div>지쿱 GAP인증 쌈채소 적상추 1kg</div>
				<br>
				<div>
					<b>9,720원</b>
				</div>
				<div>무료 배송📦</div>
				<div>
					<input type="number" min="1" max="100" name="lettuce"
						placeholder="수량" value="1"><input type="button" value="구매"
						onclick="check()">
				</div>
			</div>
		</div>
	</form>
	<footer>
	<%@include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>
</html>