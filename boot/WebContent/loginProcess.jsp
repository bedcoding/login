<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	// 아이디 및 비밀번호 입력 창에서 id 와 pass를 받아온다
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	// null  초기화  
	Connection con = null; // Connection -> DB 연결
	PreparedStatement pstmt = null; // SQL 구문 처리 
	ResultSet rs = null; // 검색(select) 한 결과를 담아주는 집합(Record Set : Table) : select
	String sql = "select * from member where id=?";

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");

		// JDBC 드라이버 연결
		con = ds.getConnection();

		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			if (pass.equals(rs.getString("pass"))) {
				session.setAttribute("id", id);

				out.println("<script>");
				out.println("alert('로그인 성공')");
				out.println("location.href='Main.jsp'");
				out.println("</script>");
			}
		}
		out.println("<script>");
		out.println("alert('로그인 실패 (회원가입 페이지로 이동)');");
		out.println("location.href='joinForm.jsp'");
		out.println("</script>");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>