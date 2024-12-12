<%@page import="java.sql.*"%>
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

	String sql = "select * from admins where adminid=? and adminpw =? ";
	
	//1. 변수 4개 선언
	String driverName = "com.mysql.jdbc.Driver";	// MySQL JDBC 드라이버 이름
	String url = "jdbc:mysql://localhost:3306/jsp_project"; 
	String username = "root";
	String password = "12345";
	
	Connection conn = null ; //DB 와의 커넥션을 초기값 null 로 해서 생성
	PreparedStatement pstmt = null ;
	ResultSet rs = null;
	
	try {
		//2.드라이버 로딩
		Class.forName(driverName); // mysql 드라이버를 불러오기
		//3. 연동
		conn = DriverManager.getConnection(url,username,password); // DB와 프로젝트간의 커넥션 생성
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, adminid);
		pstmt.setString(2, adminpw);
		
		//4. 사용
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			session.setAttribute("admin", "yes");
			out.println("새로운 세션 생성 성공 <br>");
			out.println("관리자 "+adminid+"님이 입장하셨습니다.");
			
		} else {
			response.sendRedirect("loginErr.jsp");
		}		
		
		
	} catch(ClassNotFoundException e){
		out.println(">>연결실패 : 드라이버 복사 필요!");
	} catch(SQLException e ) {
		out.println(">>연결실패 : SQL 명령문 확인 필요"+sql);
		e.printStackTrace();
	} catch(Exception e ) {
		out.println(">>연결실패 : 오류 발생");
		e.printStackTrace();
	} finally {
		//5. 닫기 
		try {
			if(rs!=null)						
				rs.close();				
			if(pstmt!=null)						
				pstmt.close();				
			if(conn!=null)						
				conn.close();				
		} catch (SQLException e) {
			e.printStackTrace();
		}
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