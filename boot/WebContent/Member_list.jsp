<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	String id = null;

	// 세션이 null이거나 세션id가 admin이면  
	if ((session.getAttribute("id") == null) || (!((String) session.getAttribute("id")).equals("admin"))) {
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from member";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		con = ds.getConnection();

		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();

	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>회원관리 시스템 관리자 모드(회원목록 보기)</title>
</head>


<body>

	<nav class="navbar navbar-default">
	<div class="navbar-header">

		<!-- 화면이 작아지면(모바일) 메뉴버튼이 생기고 커지면  메뉴가 나옴-->
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">

			<!-- 메뉴버튼 안에 작대기 3개 만듬(디자인) -->
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.jsp"> Welcome Hell </a>
	</div>

	<div class="collapse navbar-collapse" id=bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<%
				// 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다.
				if (session.getAttribute("id") == null) 
				{
					out.println("<li><a href='loginForm.jsp'> 로그인 </a></li>");
					out.println("<li><a href='joinForm.jsp'> 회원가입 </a></li>");
				} 
				
				// 로그인 되었을 경우 - 로그아웃, 내정보 버튼을 보여준다.
				else 
				{
					out.println("<li><a href='Main.jsp'> 현재 로그인중 </a></li>");
				}
			%>	
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false"> 접속하기 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<%
					// 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다.
					if (session.getAttribute("id") == null) 
					{
						out.println("<li class='active'><a href='loginForm.jsp'> 로그인 </a></li>");
						out.println("<li><a href='joinForm.jsp'> 회원가입 </a></li>");
					} 
					
					// 로그인 되었을 경우 - 로그아웃, 내정보 버튼을 보여준다.
					else 
					{
						out.println("<li><a href='Main.jsp'> 현재 로그인중 </a></li>");
					}
				%>
			</ul></li>
		</ul>
	</div>
	</nav>

	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">



				<center>
					<table border="1" width="220">
						<tr align="center">
							<td colspan="2">회원목록</td>
						</tr>
						<%
							while (rs.next()) {
						%>
						<tr align="center">
							<td><a href="Member_info.jsp?id=<%=rs.getString("id")%>">
									<%=rs.getString("id")%>
							</a></td>
							<td><a href="Member_delete.jsp?id=<%=rs.getString("id")%>">삭제</a>
							</td>
						</tr>
						<%
							}
						%>

					</table>
				</center>

			</div>
			<div class="col-lg-4"></div>
		</div>

		<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
</body>
</html>