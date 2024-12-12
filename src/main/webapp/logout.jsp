<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate();
%>
<h2> 관리자 로그 아웃 </h2>
<hr>
세션 종료 후 로그 아웃을 수행하였습니다.<br>
그동안 수고 많은셨습니다.

	<table border=0>
		<tr>
			<td>
				<form action="main.jsp">
					<input type='submit' value="◀ 메인화면으로 이동 " >
				</form>
			</td>
		</tr>
	</table>
	
</body>
</html>