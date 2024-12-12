<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="js/join.js"></script>
</head>
<body>
	<h2>회원가입</h2>
	<hr>
	<form action="insertDB.jsp" name="joinForm" onsubmit="return joinCheck();">
		아이디 :  <input type='text' name='userID' size="16" ><br><br>
		패스워드 :  <input type='text' name='userPW' size="16" ><br><br>
		이메일 :  <input type='text' name='userEmail' size="30" ><br><br>
		<input type='reset' value="◀ 다시작성">
		<input type='submit' value='가입하기 ▶'>
	</form>
		
		
</body>
</html>