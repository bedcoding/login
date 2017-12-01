<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<meta name="viewport" content="width=device-width" , initial-scale="1">
		<link rel="stylesheet" href="css/bootstrap.css">
		<title>회원관리 시스템 회원가입 페이지</title>
		
		<script>
        function sendIt() 
        {
             //아이디 입력여부 검사
            if (document.joinForm.id.value == "") {
                alert("아이디를 입력하지 않았습니다.")
                document.joinForm.id.focus()
                return
            }
 
 
            //아이디 유효성 검사 (영문소문자, 숫자만 허용)
            for (i = 0; i < document.joinForm.id.value.length; i++) {
                ch = document.joinForm.id.value.charAt(i)
                if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')) {
                    alert("아이디는 소문자, 숫자만 입력가능합니다.")
                    document.joinForm.id.focus()
                    document.joinForm.id.select()
                    return
                }
            }
 
 
            //아이디에 공백 사용하지 않기
            if (document.joinForm.id.value.indexOf(" ") >= 0) {
                alert("아이디에 공백을 사용할 수 없습니다.")
                document.joinForm.id.focus()
                document.joinForm.id.select()
                return
            }
 
 
            //아이디 길이 체크 (6~12자)
            if (document.joinForm.id.value.length < 6 || document.joinForm.id.value.length > 12) {
                alert("아이디를 6~12자까지 입력해주세요.")
                document.joinForm.id.focus()
                document.joinForm.id.select()
                return
            }
 
 
            //비밀번호 입력여부 체크
            if (document.joinForm.pass.value == "") {
                alert("비밀번호를 입력하지 않았습니다.")
                document.joinForm.pass.focus()
                return
            }
 
 
            //비밀번호 길이 체크(4~8자 까지 허용)
            if (document.joinForm.pass.value.length < 4 || document.joinForm.pass.value.length > 8) {
                alert("비밀번호를 4~8자까지 입력해주세요.")
                document.joinForm.pass.focus()
                document.joinForm.pass.select()
                return
            }
 
 
            //비밀번호와 비밀번호 확인 일치여부 체크
            if (document.joinForm.pass.value != document.joinForm.pass2.value) {
                alert("비밀번호가 일치하지 않습니다")
                document.joinForm.pass.value = ""
                document.joinForm.pass2.value = ""
                document.joinForm.pass.focus()
                return
            }
 
 /* 
             //주민번호 오류 검사 
            str = document.joinForm.jumin.value
 
            hap = 0
            hap = hap + parseInt(str.charAt(0)) * 2
            hap = hap + parseInt(str.charAt(1)) * 3
            hap = hap + parseInt(str.charAt(2)) * 4
            hap = hap + parseInt(str.charAt(3)) * 5
            hap = hap + parseInt(str.charAt(4)) * 6
            hap = hap + parseInt(str.charAt(5)) * 7
            hap = hap + parseInt(str.charAt(6)) * 8
            hap = hap + parseInt(str.charAt(7)) * 9
            hap = hap + parseInt(str.charAt(8)) * 2
            hap = hap + parseInt(str.charAt(9)) * 3
            hap = hap + parseInt(str.charAt(10)) * 4
            hap = hap + parseInt(str.charAt(11)) * 5
 
            z = (hap % 11)
            z = 11 - z
 
            if (z == 10) { z = 0 }
            if (z == 11) { z = 1 }
 
            if (z != parseInt(str.charAt(12))) {
                alert("틀린 주민등록번호입니다.")
                document.joinForm.jumin.value = ""
                return
            }  
  */
 
            // 메일주소 오류검사
            var emailRegex = new RegExp(/^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/);
 
            if (!emailRegex.test(document.joinForm.email.value)) {
                alert("올바른 메일 주소가 아닙니다.");
                document.joinForm.email.value = "";
                return
            }
 
 
            // //메일주소 오류검사
            // function MailCheck() 
            // {
            //     var Check = false;
            //     Check = MailCheckRegex();
            //     if (!Check) return false;
 
            //     alert("메일주소가 올바르게 입력되었습니다.");
            //     return Check;
            // }
 
            // function MailCheckRegex() 
            // {
            //     var objEmail = document.getElementById("email");
            //     var objRegex = new RegExp(/^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/);
            //     if (!objRegex.test(objEmail.value)) 
            //     {
            //         alert("올바른 메일 주소가 아닙니다.");
            //         objEmail.value = "";
            //         objEmail.focus();
            //         return false;
            //     }
            //     return true;
            // }
 
 
 
            // //성별 체크 유무 확인
            // if (document.f.se[0].checked == false && document.f.se[1].checked == false) {
            //     alert("성별을 체크해 주세요")
            //     return
            // }
 
            document.joinForm.submit()
        }
 
    </script>
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
				aria-expanded="false"> 메뉴버튼 <span class="caret"></span></a>
				
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
	<!-- 
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">

 -->


	<form action="joinProcess.jsp" name="joinForm" method="post">
		<center>
			<table width="500" align="center" border="1" cellspacing="0"
				cellpadding="0">

				<tr>
					<td height="40" align="center" style="color: thistle"
						bgcolor="black" colspan="2"><b>회원 가입 페이지</b></td>
				</tr>
				
				<tr>
					<td style="color: white;" bgcolor="black" align="center">아이디</td>

					<td><input type="text" name="id" /></td>
				</tr>


				<tr>
					<td style="color: white;" bgcolor="black" align="center">비밀번호</td>

					<td><input type="password" name="pass" /></td>
				</tr>

				<tr>
					<td style="color: white;" bgcolor="black" align="center">비밀번호
						확인</td>

					<td><input type="password" name="pass2" /></td>
				</tr>

				<tr>
					<td style="color: white;" bgcolor="black" align="center">주민번호</td>

					<td><input type="password" name="jumin" /></td>
				</tr>


				<tr>
					<td height="40" align="center" bgcolor="#aaaaaa" colspan="2">
						<b>개인 신상 정보</b>
					</td>
				</tr>


				<tr>
					<td bgcolor="#aaaaaa" align="center">이름</td>

					<td><input type="text" name="name" /></td>
				</tr>


				<tr>
					<td bgcolor="#aaaaaa" align="center">나이</td>

					<td><input type="text" name="age" maxlength="2" /></td>
				</tr>



				<tr>
					<td bgcolor="#aaaaaa" align="center">이메일주소</td>

					<td><input type="text" name="email"></td>
				</tr>


				<tr>
					<td bgcolor="#aaaaaa" align="center">생일</td>


					<td><input type="text" name="button_Year"> 년 <select
						name="button_Month">
							<option value="01"> 01 </option>
							<option value="02"> 02 </option>
							<option value="03"> 03 </option>
							<option value="04"> 04 </option>
							<option value="05"> 05 </option>
							<option value="06"> 06 </option>
							<option value="07"> 07 </option>
							<option value="08"> 08 </option>
							<option value="09"> 09 </option>
							<option value="10"> 10 </option>
							<option value="11"> 11 </option>
							<option value="12"> 12 </option>

					</select> 월 <select name="button_Day">
							<option value="01"> 01 </option>
							<option value="02"> 02 </option>
							<option value="03"> 03 </option>
							<option value="04"> 04 </option>
							<option value="05"> 05 </option>
							<option value="06"> 06 </option>
							<option value="07"> 07 </option>
							<option value="08"> 08 </option>
							<option value="09"> 09 </option>
							<option value="10"> 10 </option>
							<option value="11"> 11 </option>
							<option value="12"> 12 </option>
							<option value="13"> 13 </option>
							<option value="14"> 14 </option>
							<option value="15"> 15 </option>
							<option value="16"> 16 </option>
							<option value="17"> 17 </option>
							<option value="18"> 18 </option>
							<option value="19"> 19 </option>
							<option value="20"> 20 </option>
							<option value="21"> 21 </option>
							<option value="22"> 22 </option>
							<option value="23"> 23 </option>
							<option value="24"> 24 </option>
							<option value="25"> 25 </option>
							<option value="26"> 26 </option>
							<option value="27"> 27 </option>
							<option value="28"> 28 </option>
							<option value="29"> 29 </option>
							<option value="30"> 30 </option>
							<option value="31"> 31 </option>
					</select> 일</td>
				</tr>


				<tr>
					<td bgcolor="#aaaaaa" align="center">성별</td>

					<td><input type="radio" name="gender" value="남"
						checked="checked" /> 남자 <input type="radio" name="gender"
						value="여" />여자</td>
				</tr>

				<tr>
					<td bgcolor="#aaaaaa" align="center">관심분야</td>

					<td>
						<input name="like1" type="checkbox" value="html"> html 
						<input name="like2" type="checkbox" value="java"> java 
						<input name="like3" type="checkbox" value="c++"> C++
						<input name="like4" type="checkbox" value="c#"> C# 
						<input name="like5" type="checkbox" value="python"> Python
					</td>
				</tr>

				<tr>
					<td bgcolor="#aaaaaa" align="center">자기소개</td>

					<td><textarea name="intro" rows="10" cols="50"> </textarea></td>
				</tr>



				<tr>
					<td colspan="2" align="center"><br>
						<button type="button" onclick="location.href='javascript:sendIt()' "> 회원가입 </button>
				   <!-- <button type="button" onclick="location.href='javascript:joinForm.submit()' "> 회원가입 </button> -->
						<br><br>
					</td>

					<!-- 다른 방식
	 					<td colspan="2" align="center"><a
							href="javascript:joinForm.submit()">회원가입</a>&nbsp;&nbsp; <a
							href="javascript:joinForm.reset()">다시작성</a>
						</td>
 						-->
				</tr>
			</table>
		</center>
	</form>


	<!-- 
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div> -->

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>