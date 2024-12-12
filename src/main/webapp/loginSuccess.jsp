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
	request.setCharacterEncoding("utf-8");
	
	String adminid = request.getParameter("adminID");
	String adminpw = request.getParameter("adminPW");

	if (adminid.equals("space") && adminpw.equals("123456")) {
		session.setAttribute("admin", "yes");
		out.println("새로운 세션 생성 성공 <br>");
		out.println("관리자 "+adminid+"님이 입장하셨습니다.");
		
	} else {
		response.sendRedirect("loginErr.jsp");
	}
	
%>
	<table border=0>
		<tr>
			<td>
				<form action="memberList.jsp">
					<input type='submit' value="◀ 등록회원 관리하기 " >
				</form>
			</td>
			<td>
				<form action="logout.jsp">
					<input type='submit' value="로그아웃 ▶" >
				</form>
			</td>
		</tr>
	</table>
</body>
</html>