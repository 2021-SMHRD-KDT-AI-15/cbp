<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${!empty info}">
		<!-- info가 null값이 아니라면 -->
		<h1>${info.email}님환영합니다.</h1>
	</c:if>

	<c:if test="${empty info}">
		<!-- info가 null값이라면 -->
		<h1>로그인 한 세션아이디를 출력해주세요</h1>
	</c:if>
</body>
</html>