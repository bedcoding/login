<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> 메인화면 </title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/landing-page.min.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-light bg-light static-top">
      <div class="container">
        <a class="navbar-brand" href="joinForm.jsp"> 회원가입 </a>

			<%
				// 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다.
				if (session.getAttribute("id") == null) 
				{
					out.println("<a class='btn btn-primary' href='loginForm.jsp'> 로그인 </a>");
				} 
				
				// 로그인 되었을 경우 - 로그아웃, 내정보 버튼을 보여준다.
				else 
				{
					out.println("<a class='btn btn-primary' href='Main.jsp'> 내 정보 </a>");
				}
			%>
		</div>
    </nav>

    <!-- Masthead -->
    <header class="masthead text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <h1 class="mb-5"> 이 버튼을 눌러서 지옥을 맛보세요! </h1>
          </div>
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            
            
            <form>
              <div class="form-row">
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                  <input type="email" class="form-control form-control-lg" placeholder="Welcome to hell">
                </div>
                                
                <div class="col-12 col-md-3">
                <button type="submit" class="btn btn-block btn-lg btn-primary" onclick="location.href='http://www.bitacademy.com/' "> 이동 </button>
           
                </div>
              </div>
            </form>
            
            
          </div>
        </div>
      </div>
    </header>

    <!-- Icons Grid -->
    <section class="features-icons bg-light text-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
              <div class="features-icons-icon d-flex">
                <i class="icon-screen-desktop m-auto text-primary"></i>
              </div>
              <h3> 비트에서 무엇을 하나요? </h3>
              <p class="lead mb-0"> 아침부터 밤까지 코딩을 해요! </p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
              <div class="features-icons-icon d-flex">
                <i class="icon-layers m-auto text-primary"></i>
              </div>
              <h3> 갈수록 쌓이는 실력 </h3>
              <p class="lead mb-0"> 대신 허리가 끊어져요 </p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-0 mb-lg-3">
              <div class="features-icons-icon d-flex">
                <i class="icon-check m-auto text-primary"></i>
              </div>
              <h3> 다가오는 프로젝트 기간 </h3>
              <p class="lead mb-0"> 으아아아아아아아아 </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Image Showcases -->
    <section class="showcase">
      <div class="container-fluid p-0">
        <div class="row no-gutters">

          <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('img/bg-showcase-1.jpg');"></div>
          <div class="col-lg-6 order-lg-1 my-auto showcase-text">
            <h2> 어째서 부트스트랩을 썼냐고요? </h2>
            <p class="lead mb-0"> 왜냐하면 제가 디자인을 할 줄 모르거든요 </p>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-lg-6 text-white showcase-img" style="background-image: url('img/bg-showcase-2.jpg');"></div>
          <div class="col-lg-6 my-auto showcase-text">
            <h2> 매일 나오는 과제 </h2>
            <p class="lead mb-0"> 안마기를 가져오지 않으면 당신의 허리에 무리가 갈 겁니다. </p>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('img/bg-showcase-3.jpg');"></div>
          <div class="col-lg-6 order-lg-1 my-auto showcase-text">
            <h2> 잘못 건들면 무너지는 공든탑 </h2>
            <p class="lead mb-0"> 코드 몇줄 추가하면 갑자기 작동이 안되요 </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="testimonials text-center bg-light">
      <div class="container">
        <h2 class="mb-5"> 비트에 대해 사람들이 하는 말...</h2>
        <div class="row">
          <div class="col-lg-4">
            <div class="testimonial-item mx-auto mb-5 mb-lg-0">
              <img class="img-fluid rounded-circle mb-3" src="img/testimonials-1.jpg" alt="">
              <h5> PhuPhu </h5>
              <p class="font-weight-light mb-0">"대책없이 비트에 오다간 죽을 것이다"</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="testimonial-item mx-auto mb-5 mb-lg-0">
              <img class="img-fluid rounded-circle mb-3" src="img/testimonials-2.jpg" alt="">
              <h5> Mr. Gong </h5>
              <p class="font-weight-light mb-0">"만약 당신이 비트에 온다면, 반드시 침대를 준비해야 할 것이다"</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="testimonial-item mx-auto mb-5 mb-lg-0">
              <img class="img-fluid rounded-circle mb-3" src="img/testimonials-3.jpg" alt="">
              <h5> Ms. Bit </h5>
              <p class="font-weight-light mb-0">"지옥을 체험할 준비가 되셨나요? 어서 비트에 오십시오!"</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Call to Action -->
    <section class="call-to-action text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <h2 class="mb-4"> 아직 고민하시나요? 어서 시작하세요! </h2>
          </div>
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            <form>
              <div class="form-row">
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                  <input type="email" class="form-control form-control-lg" placeholder="Welcome to hell">
                </div>
                <div class="col-12 col-md-3">
                  <button type="submit" class="btn btn-block btn-lg btn-primary" onclick="location.href='http://www.bitacademy.com/' "> 이동 </button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="footer bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
            <ul class="list-inline mb-2">
              <li class="list-inline-item">


<%
 	// 로그인 안되었을 경우 - 로그인 버튼을 보여준다.
 	if (session.getAttribute("id") == null) 
 	{
 		out.println("<a href='loginForm.jsp'> 로그인 </a>");
 		
 	} 
 	
	//로그인 되었을 경우 - 로그아웃, 내정보 버튼을 보여준다.
 	else 
 	{
 		out.println("<a href='Main.jsp'> 내 정보 </a>");
 	}
 %>

						</li>
              
              
              <li class="list-inline-item">&sdot;</li>
              <li class="list-inline-item">
                <a href="joinForm.jsp"> 회원가입 </a>
              </li>

            </ul>
            <p class="text-muted small mb-4 mb-lg-0">&copy; Start Bit Academy 2017. </p>
          </div>
          <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
            <ul class="list-inline mb-0">
              <li class="list-inline-item mr-3">
                <a href="#">
                  <i class="fa fa-facebook fa-2x fa-fw"></i>
                </a>
              </li>
              <li class="list-inline-item mr-3">
                <a href="#">
                  <i class="fa fa-twitter fa-2x fa-fw"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-instagram fa-2x fa-fw"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
