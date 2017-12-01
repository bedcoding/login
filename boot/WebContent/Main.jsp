<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String id = null; // null 초기화
	if (session.getAttribute("id") != null) { // 세션이 등록 되었다면 id를 변수에 저장
		id = (String) session.getAttribute("id");
		
	} else {
		out.println("<script>"); // 아니라면 loginForm.jsp 이동
		out.println("alert('로그인 실패');");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>회원관리 시스템 메인 페이지</title>
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


	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
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


				<!-- <script> alert('로그인 성공'); </script> -->
				<h3>로그인 중: <%=id%>
				</h3>
				<%
					if (id.equals("admin")) // 관리자만 보임
					{
				%>
						<tr>
							<td align="center"><br>
								<button type="button" onclick="location.href='Member_list.jsp' ">
									관리자모드 접속(회원목록)
								</button> <br> <br>
							</td>
						</tr>
				<%
					}
				%>

			</div>
			<div class="col-lg-4"></div>
		</div>
		</div>
		

		<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
</body>
</html>