<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
h2 {
	color: grey;
}
</style>
<link rel="stylesheet" href="resources/css/navbar_techandall.css">
<link rel="stylesheet" href="resources/css/button.css">
<link href="resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
	<button value="메인으로" onclick="location.href='/index.do'">메인으로</button>
	<center>
		<h1>${sessionScope.name}님의장바구니 목록 입니다.</h1>
	</center>
	<c:choose>
		<c:when test="${empty sessionScope.user_product}">
			<center>
				<h2>아직 장바구니에 추가하신 제품이 없습니다.</h2>
			</center>
		</c:when>
		<c:when test="${!empty sessionScope.user_product}">
			<table border="1">
				<tr>
					<td>${sessionScope.user_product }(제품)</td>
					<td>${sessionScope.user_product_count }(수량)</td>
				</tr>
			</table>
		</c:when>
	</c:choose>
</body>
</html>