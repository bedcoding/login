<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String pass2 = request.getParameter("pass2");
	String jumin = request.getParameter("jumin");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String button_Year = request.getParameter("button_Year");
	String button_Month = request.getParameter("button_Month");
	String button_Day = request.getParameter("button_Day");
	
	String like1 = " ";
	if(request.getParameter("like1") != null)
		like1 = request.getParameter("like1");
	
	String like2 = " ";
	if(request.getParameter("like2") != null)
		like2 = request.getParameter("like2");
	
	String like3 = " ";
	if(request.getParameter("like3") != null)
		like3 = request.getParameter("like3");
	
	String like4 = " ";
	if(request.getParameter("like4") != null)
		like4 = request.getParameter("like4");
	
	String like5 = " ";
	if(request.getParameter("like5") != null)
		like5 = request.getParameter("like5");

	String intro = request.getParameter("intro");

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	try {

		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		con = ds.getConnection();

		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, pass2);
		pstmt.setString(4, jumin);
		pstmt.setString(5, name);
		pstmt.setString(6, age);
		pstmt.setString(7, gender);
		pstmt.setString(8, email);
		pstmt.setString(9, button_Year);
		pstmt.setString(10, button_Month);
		pstmt.setString(11, button_Day);
		pstmt.setString(12, like1);
		pstmt.setString(13, like2);
		pstmt.setString(14, like3);
		pstmt.setString(15, like4);
		pstmt.setString(16, like5);
		pstmt.setString(17, intro);

		int result = pstmt.executeUpdate();

		if (result != 0) {
			out.println("<script>");
			out.println("alert('회원가입 성공');");
			out.println("location.href='loginForm.jsp'");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('회원가입 실패');");
			out.println("location.href='joinForm.jsp'");
			out.println("</script>");
		}

	} catch (Exception e) {
		e.printStackTrace();
	}
%>