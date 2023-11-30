<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="LoginService" method="post">
		<input type="text" name="email" placeholder="Email을 입력하세요"> 
		<input type="password" name="pw" placeholder="PW를 입력하세요"> 
		<input type="submit" value="LogIn" class="button fit">
	</form>


	<form action="JoinService" method="post">
			<input type="text" name="email" placeholder="Email을 입력하세요">
			<input type="password" name="pw" placeholder="PW를 입력하세요">
			<input type="text" name="nick" placeholder="닉네임을 입력하세요">
			<input type="date" name="q_date">
			<input type="date" name="s_date">
			<input type="text" name="price">
			<input type="text" name="s_daily">
			<input type="date" name="joinday">
			<input type="submit" value="JoinUs">
		</form>

</body>
</html>