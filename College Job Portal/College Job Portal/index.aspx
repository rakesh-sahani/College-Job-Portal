<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="College_Job_Portal.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MERI</title>
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Raleway:500,600,700,800,900,400,300' rel='stylesheet' type='text/css'>

    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900,300italic,400italic' rel='stylesheet' type='text/css'>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	
    <!-- Owl Carousel Assets -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">


    <!-- Pixeden Icon Font -->
    <link rel="stylesheet" href="css/Pe-icon-7-stroke.css">

    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">


    <!-- PrettyPhoto -->
    <link href="css/prettyPhoto.css" rel="stylesheet">
    
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <!-- Style -->
    <link href="css/style.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <!-- Responsive CSS -->
    <link href="css/responsive.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>
    <!-- PRELOADER -->
    <div class="spn_hol">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>

 <!-- END PRELOADER -->

 <!-- =========================
     START ABOUT US SECTION
============================== -->
    <section class="header parallax home-parallax page" id="HOME">
        <h2></h2>
        <div class="section_overlay">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">
                            <img src="images/logo.png" alt="Logo">
                        </a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <!-- NAV -->
                            <li><a href="#HOME">HOME</a> </li>
                            <li><a href="#ABOUT">ABOUT </a> </li>  
							<li><a href="#COMPANY">COMPANY </a> </li> 
							<li><a href="#TESTIMONIAL">DEVELOPER </a> </li>							
                            <li><a href="#CONTACT">CONTACT </a> </li>
                            <li><a href="student/Login.aspx">LOGIN </a> </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container- -->
            </nav>

            <div class="container home-container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo text-center">
                                <!-- LOGO -->
                            <img src="images/logo.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 col-sm-8">
                        <div class="home_text">
                            <!-- TITLE AND DESC -->
                            <h1>JOB PORTAL</h1>
                           

                            <div class="download-btn">
                            <!-- BUTTON -->
                                <a class="btn home-btn wow fadeInLeft" href="student/Login.aspx">Login</a>
                                <a class="tuor btn wow fadeInRight" href="#ABOUT">Take a tour <i class="pe-7s-angle-down-circle"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-md-offset-1 col-sm-4">
                        <div class="home-iphone">
                            <img src="images/Home.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- END HEADER SECTION -->




 <!-- =========================
     START ABOUT US SECTION
============================== -->


    <section class="about page" id="ABOUT">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <!-- ABOUT US SECTION TITLE-->
                    <div class="section_title">
                        <h2>About Us</h2>
                        <p>
						Established in 1996, in Delhi and NCR, recognized as the hubs for education, culture and heritage, MERI group of higher and technical education are promoted by Triveni Educatioinal and Social Welfare Society. An ISO 9001:2008 certified institution, MERI believes in responding not just innovatively but also effectively to train human resources and fulfill educational needs of the companies and MNC’s looking for technical and management executives at various levels.  Besides, MERI PG qualification is also competent enough to make its pursuers eligible of taking a ‘NET’ or join a PHD to enter the university teaching.

MERI, Janakpuri, New Delhi, one of the top B-schools of west Delhi and various other institutions belonging to the management are self financed & self established with an approval of AICTE, ,MHRD government of India and affiliated with GGSIPU – Delhi, and couple of state ministries’ statutory bodies responsible for technical education in India.
						</p>
                    </div>
                </div>

            </div>
        </div>
        <div class="inner_about_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="about_phone wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".5s">
                        <!-- PHONE -->
                            <img src="images/about.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-6  wow fadeInRight" data-wow-duration="1s" data-wow-delay=".5s">
                        <!-- TITLE -->
                        <div class="inner_about_title">
                            <h2>Why we are best <br> for you</h2>
                            <p>
							MERI has been a trend-setter in realizing the industrial needs and trying to satisfy those by developing human resources equipped with knowledge, technical skill – set and other values essential for good performance.  The teaching methodology at MERI has been successfully integrating the technical and managerial knowledge with professional inputs from the industry.
							</p>
                        </div>
                        <div class="inner_about_desc">

                            <!-- SINGLE DESC -->
                            <div class="single_about_area fadeInUp wow" data-wow-duration=".5s" data-wow-delay="1s">
                                <!-- HEADING DESCRIPTION -->
								<h2>MCA</h2>    													
                            </div>
                            <!-- END SINGLE DESC -->


                            <!-- SINGLE DESC -->
                            <div class="single_about_area fadeInUp wow" data-wow-duration=".5s" data-wow-delay="1.5s">                                
                                <!-- HEADING DESCRIPTION -->
                                <h2>MBA</h2>                                
                            </div>
                            <!-- END SINGLE DESC -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End About Us -->



<!-- =========================
     START DOWNLOAD NOW 
============================== -->
    <section class="download page" id="COMPANY">
       

        <div class="available_store">
            <div class="container  wow bounceInRight" data-wow-duration="1s">
                <div class="col-md-12">
                        <marquee>
						<img src ="images/banner.png"/>						
						</marquee>
						<br>
                   
                </div>                
            </div>
        </div>
    </section>
    <!-- END DOWNLOAD -->


 <!-- =========================
     START TESTIMONIAL SECTION
============================== -->

    <section id="TESTIMONIAL" class="testimonial parallax">
        <div class="section_overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 wow bounceInDown">
                        <div id="carousel-example-caption-testimonial" class="carousel slide" data-ride="carousel">
                            

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <!-- IMAGE -->
                                                <img src="images/ryu.png" alt="">
                                                <div class="testimonial_caption">
                                                   <!-- DESCRIPTION -->  
                                                    <h2>Rakesh Sahani</h2>
                                                    <h4>SR. Developer</h4>
													<p>
													<a target="_blank" href="https://www.facebook.com/Rakesh.Sahani.007" ><img src="images/facebook.png" width="60" height="60"></a>
													<a target="_blank" href="http://in.linkedin.com/pub/rakesh-sahani/66/834/853"><img src="images/in.png" width="60" height="60"></a>
													<a target="_blank" href="whatsapp://9582161515"><img src="images/wh.png" width="60" height="60"></a>
													</p>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- END TESTIMONIAL SECTION -->


<!-- =========================
     START CONTCT FORM AREA
============================== -->
    <section class="contact page" id="CONTACT">
        <div class="section_overlay">
            <div class="container">
                <div class="col-md-10 col-md-offset-1 wow bounceIn">
                    <!-- Start Contact Section Title-->
                    <div class="section_title">
                        <h2>Get in touch</h2>
                        
                    </div>
                </div>
            </div>

            <div class="contact_form wow bounceIn">
                <div class="container">

                <!-- START ERROR AND SUCCESS MESSAGE -->
                    <div class="form_error text-center">
                        <div class="name_error hide error">Please Enter your Name</div>
                        <div class="email_error hide error">Please Enter your Email</div>
                        <div class="email_val_error hide error">Please Enter a Valid Email Address</div>
                        <div class="message_error hide error">Please Enter Your Message</div>
                      
                    </div>
                    <div class="Sucess"></div>
                <!-- END ERROR AND SUCCESS MESSAGE -->

                <!-- FORM -->    
                    <form role="form" action="" method="post" class="text-center" runat="server">
                        <div class="row">
                            <div class="col-md-4">

                     <asp:textbox  runat="server"  Cssclass="form-control" id="name" placeholder="Name" />
                     <asp:textbox  runat="server" TextMode="Email"  Cssclass="form-control" id="email" placeholder="Email" />
                     <asp:textbox  runat="server" TextMode="Number" Cssclass="form-control" id="number" placeholder="Number" />
                    <asp:RequiredFieldValidator   ID="RequiredFieldValidator1" ControlToValidate="number" runat="server" ErrorMessage="Please Enter Your Number" ForeColor="#F39C12" />    
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="number" ErrorMessage="10 Digit"   ValidationExpression="[0-9]{10}" ForeColor="#F39C12" />
                                </div>
                            <div class="col-md-8">
                                <asp:textbox runat="server" Cssclass="form-control" id="message" TextMode="MultiLine" rows="25" cols="10" placeholder="  Message Texts..." />
                                <asp:Button ID="Button1"   Text="SEND MESSAGE" runat="server" OnClick="btn_Sent" Height="46px" Width="746px"/>
                                <asp:Label ID="Label" runat="server"  ForeColor="#F39C12"><%=Session["msg"]%></asp:Label>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM --> 
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-md-12 wow bounceInLeft">
                        <div class="social_icons">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END CONTACT -->



<!-- =========================
     FOOTER 
============================== -->

    <section class="copyright">
        <h2></h2>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="copy_right_text">
                    <!-- COPYRIGHT TEXT -->
                        <p>Copyright &copy; 2017 <span><a href="http://meri.edu.in/meri/">MERI</a> By  </span><a href="http://www.revolutiontech.co.in">RevolutionTech</a></p>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="scroll_top">
                        <a href="#HOME"><i class="pe-7s-angle-up-circle"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END FOOTER -->


<!-- =========================
     SCRIPTS 
============================== -->


    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/jquery.fitvids.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.ajaxchimp.langs.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/script.js"></script>
    <script>

        function login() {
    var a = document.getElementById("name").value;
     alert(a);
}
    </script>



</body>

</html>
