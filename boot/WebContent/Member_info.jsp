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

	String info_id = request.getParameter("id");

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from member where id=?";
	try {

		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		con = ds.getConnection();

		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, info_id);
		rs = pstmt.executeQuery();

		rs.next();

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
<title>회원관리 시스템 관리자 모드(회원정보 보기)</title>
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
					<table border="1" width="240">
						<tr align="center">
							<td>아이디</td>
							<td><%=rs.getString("id")%></td>
						</tr>

						<tr align="center">
							<td>비밀번호</td>
							<td><%=rs.getString("pass")%></td>
						</tr>

						<tr align="center">
							<td>비밀번호 확인</td>
							<td><%=rs.getString("pass2")%></td>
						</tr>

						<tr align="center">
							<td>주민번호</td>
							<td><%=rs.getString("jumin")%></td>
						</tr>

						<tr align="center">
							<td>이름</td>
							<td><%=rs.getString("name")%></td>
						</tr>

						<tr align="center">
							<td>나이</td>
							<td><%=rs.getString("age")%></td>
						</tr>

						<tr align="center">
							<td>성별</td>
							<td><%=rs.getString("gender")%></td>
						</tr>

						<tr align="center">
							<td>이메일주소</td>
							<td><%=rs.getString("email")%></td>
						</tr>

						<tr align="center">
							<td>생년</td>
							<td><%=rs.getString("button_Year")%></td>
						</tr>

						<tr align="center">
							<td>생월</td>
							<td><%=rs.getString("button_Month")%></td>
						</tr>

						<tr align="center">
							<td>생일</td>
							<td><%=rs.getString("button_Day")%></td>
						</tr>

						<tr align="center">
							<td>취미</td>
							<td>
								<%=rs.getString("like1")%>
								<%=rs.getString("like2")%>
								<%=rs.getString("like3")%>
								<%=rs.getString("like4")%>
								<%=rs.getString("like5")%>
							</td>
						</tr>
						
						<tr align="center">
							<td>자기소개</td>
							<td><%=rs.getString("intro")%></td>
						</tr>


						<tr align="center">
							<td colspan="2"><a href="Member_list.jsp">리스트로 돌아가기</a></td>
						</tr>
					</table>
				</center>


			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>

		<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>

</body>
</html>