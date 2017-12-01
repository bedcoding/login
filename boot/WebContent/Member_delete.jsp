<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	String id = null;

	if ((session.getAttribute("id") == null) || (!((String) session.getAttribute("id")).equals("admin"))) {
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}

	String delete_id = request.getParameter("id");

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "delete from member where id=?";

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		con = ds.getConnection();

		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, delete_id);
		pstmt.executeUpdate();

		out.println("<script>");
		out.println("alert('삭제 완료');");
		out.println("location.href='Member_list.jsp'");
		out.println("</script>");

		con.commit();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>