<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<style type="text/css">
.BackGroundColor {
  /* background-color: #002029; */
  background-color: white;
  height: 100vh;
}

.secondColor {
  /* background-color: #00303d; */
  background-image: url("Images/HosptileBackground.png");
}

.thirdColor {
  background-color: #004052;
}

.fourthColor {
  background-color: #005066;
}

.fifthColor {
  background-color: #00607a;
}

* {
  padding: 0px;
  margin: 0px;
  box-sizing: border-box;
  /* overflow-x: hidden; */
}

body {
  overflow-x: hidden;
}

#preloader {
  background: #002029 url("../Resources/GIF/preloader.gif") center center;
  width: 100%;
  height: 100vh;
  position: fixed;
  z-index: 2;
  top: 0;
}

.myname {
  font-size: 120px;
  font-weight: 500;
  padding-top: 100px;
  padding-bottom: 100px;
  text-align: center;
}

.myname {
  opacity: 0;
  animation: FadeIn 4.5s forwards;
}

@keyframes FadeIn {
  from {
    opacity: 0;
  }

  to {
    opacity: 1;
  }
}

.flipcontainer {
  text-align: center;
  color: #32bbe0;
  font-size: 32px;
  font-weight: bold;
}

.flip {
  height: 50px;
  overflow: hidden;
}

.Textbackground1 {
  background-color: #dc143c;
  color: white;
  padding-left: 20px;
  padding-right: 20px;
  display: inline-block;
  margin-bottom: 45px;
}

.Textbackground2 {
  background-color: rgb(23, 226, 23);
  color: white;
  padding-left: 20px;
  padding-right: 20px;
  display: inline-block;
  margin-bottom: 45px;
}

.Textbackground3 {
  background-color: rgb(124, 5, 179);
  color: white;
  padding-left: 20px;
  padding-right: 20px;
  display: inline-block;
}

.ContactIcon {
  transition: 0.3s;
}
.ContactIcon:hover {
  color: white;
}

.ff {
  animation: ShowWorkWordAnimations 5s linear infinite;
}

@keyframes ShowWorkWordAnimations {
  0% {
    margin-top: -270px;
  }
  5% {
    margin-top: -180px;
  }
  33% {
    margin-top: -180px;
  }
  38% {
    margin-top: -90px;
  }
  66% {
    margin-top: -90px;
  }
  71% {
    margin-top: 0px;
  }
  99.99% {
    margin-top: 0px;
  }
  100% {
    margin-top: -270px;
  }
}

.hedderbackgroud {
  /* background-color: #002029; */
  background-color: black;
  font-family: "HeaderMenue";
  font-size: xx-large;
}


.hedderbackgroudsmal {
  /* background-color: #002029; */
  background-color: black;
  font-family: "HeaderMenue";
  font-size:  large;
}

.MenuText {
  transition: 0.5s;
  text-decoration: none;
  color: white;
  opacity: 0;
  animation: FadeIn 4.5s forwards;
}

.MenuText:hover {
  color: #fff;
  text-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4,
    0 0 100px #03e9f4;
}

.logo {
  width: 100px;
  height: 100px;
  background-color: black;
  border-radius: 100% 100% 0 0;
  display: flex;
  justify-content: center;
}

.logoImage {
  height: 300px;
  width: 300px;
}

.aboutMeSection {
  position: relative;
}

.aboutmeText {
  text-align: center;
  color: black;
  font-weight: bolder;
  font-size: 70px;
}

.aboutmeDiv {
  margin-top: 100px;
}

.CamaraPhoto {
  max-width: 100%;
  height: auto;
}

.aboutParagraph {
  text-align: center;
  color: black;
}

.overTrangle {
  width: 100%;
  height: 45%;
  background-color: black;
  position: absolute;
  bottom: -1%;
  left: 0%;
  clip-path: polygon(100% 0, 0% 100%, 100% 100%);
}

.FreelanceTag {
  text-align: right;
  margin-top: 100px;
  padding: 50px;
}

.EducationTopic {
  font-weight: bold;
  font-size: 80px;
  color: white;
}
.JainnaturalsImage {
  width: 50%;
  height: auto;
}

.backCover {
  background-color: black;
  position: relative;
}

.patern1 {
  width: 100px;
  height: 100px;
  background-color: rgba(255, 255, 255, 0.671);
  clip-path: polygon(86% 0, 100% 0%, 16% 100%, 0 100%);
}

.GlassCard1 {
  background-color: rgba(255, 255, 255, 0.075);
  position: absolute;
  top: 0%;
  backdrop-filter: blur(14px);
  border-radius: 10px;
  border: 1px solid white;
}

.GlassCard2 {
  background-color: rgba(238, 16, 16, 0.075);
  /* position: absolute; */
  /* bottom: 0%; */
  backdrop-filter: blur(14px);
  border-radius: 10px;
  border: 3px solid rgb(68, 53, 53);
}

.GlassCard3 {
  background-color: rgba(14, 78, 68, 0.075);
  /* position: absolute; */
  /* bottom: 0%; */
  backdrop-filter: blur(14px);
  border-radius: 10px;
  border: 3px solid rgb(68, 53, 53);
}

.glassButton1 {
  background-color: #dc143c38;
  backdrop-filter: blur(14px);
  padding: 10px;
  color: white;
  font-weight: bold;
  border-radius: 10px;
  border: 1px solid red;
  font-size: xx-large;
  transition: 0.7s;
}

.glassButton1:hover {
  box-shadow: 0 0 30px red;
}

.glassButton2 {
  background-color: rgba(32, 163, 143, 0.363);
  backdrop-filter: blur(14px);
  padding: 10px;
  color: white;
  font-weight: bold;
  border-radius: 10px;
  border: 1px solid rgba(28, 167, 146, 0.918);
  font-size: xx-large;
  transition: 0.7s;
}

.glassButton2:hover {
  box-shadow: 0 0 30px rgba(58, 243, 215, 0.733);
}

.JainNaturalImage {
  width: 50%;
  height: auto;
  /* padding: 5px; */
  display: flex;
  justify-content: center;
}

.WebProject {
  font-size: 60px;
  color: white;
  font-weight: bold;
  text-decoration: underline;
  font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
  text-shadow: 5px 5px 10px black;
}

.SiteName {
  font-size: 100px;
  color: grey;
  font-weight: lighter;
}

.CloseOverTrangle {
  width: 100%;
  height: 300px;
  background-color: black;
  clip-path: polygon(100% 0, 0% 0, 100% 100%);
  /* border: none;
  display: flex; */
  border: none;
}

.parallxOutDiv {
  background-color: black;
  color: white;
}

.parallaxDiv1 {
  margin-top: 50px;
  color: white;
}

.parallax1 {
  background-image: url("Images/Banner1.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: fixed;
  width: 100%;
  height: 500px;
}

.parallax2 {
  background-image: url("../Resources/Images/me.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: fixed;
  width: 100%;
  height: 100px;
}

.paralaxText {
  color: white;
}

.footerbackgorund {
  background-color: #202020;
}

.iconBorder {
  padding: 30px;
}

.FooterIcons {
  color: white;
  font-weight: bold;
  font-size: 50px;
  text-decoration: none;
  padding-left: 10px;
  padding-right: 10px;
}

.skilbackground {
  width: 100%;
  height: 500px;
  background-image: url("../Resources/Images/zebra.jpg");
  background-repeat: repeat;
  background-size: contain;
  filter: brightness(-180px);
}

.TextGlow {
  color: white;
  font-size: 50px;
  text-shadow: 0px 5px 5px black;
  text-align: center;
  font-weight: bold;
  font-family: "Gill Sans";
}

.circleborder {
  background-color: black;
  width: 100%;
  height: 200px;
  /* margin-left: 20px; */
}

.circle {
  background-color: white;
  width: 100%;
  height: 200px;
  border-radius: 100%;
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  background: conic-gradient(red 5deg, #ededed 0deg);
}

.circle::before {
  content: "";
  width: 90%;
  height: 170px;
  background-color: black;
  border-radius: 100%;
  position: absolute;
}

.persentage {
  color: white;
  position: absolute;
  top: 60%;
  left: 40%;
}

.Icon {
  color: white;
  font-size: 60px;
  position: absolute;
  top: 20%;
  left: 40%;
}

.DownTOUp {
  transform: translateY(50px);
  opacity: 0;
  transition: 0.5s ease-in;
  filter: blur(14px);
  visibility: hidden;
}

.DownTOUp.active {
  transform: translateY(0px);
  filter: blur(0px);
  opacity: 1;
  visibility: visible;
}

.UpToDown {
  transform: translateY(-100px);
  opacity: 0;
  visibility: hidden;
  transition: 1s ease-in;
  filter: blur(50px);
}

.UpToDown.active {
  transform: translateY(0px);
  opacity: 1;
  visibility: visible;
  filter: blur(0px);
}

.fadeUp {
  visibility: hidden;
  opacity: 0;
  filter: blur(14px);
  transition: 1.5s ease-in-out;
  /* display: none; */
}

.fadeUp.active {
  visibility: visible;
  opacity: 1.5;
  filter: blur(0px);
  /* display: block; */
}

.RightToLeft {
  transform: translateX(100px);
  opacity: 0;
  filter: blur(14px);
  transition: 1s ease-in-out;
  visibility: hidden;
}

.RightToLeft.active {
  transform: translateX(0px);
  opacity: 1;
  filter: blur(0px);
  visibility: visible;
}



.LeftToRight {
  transform: translateX(-100px);
  opacity: 0;
  filter: blur(14px);
  transition: 1s ease-in-out;
  visibility: hidden;
}

.LeftToRight.active {
  transform: translateX(0px);
  opacity: 1;
  filter: blur(0px);
  visibility: visible;
}
</style>

</head>
<body class="bg-white">

	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="row">
					<!-- preloader -->
					<div class="col-12 d-flex justify-content-center">
						<div class="row" id="preloader"></div>
					</div>

					<!-- First Animation  -->
					<div class="col-12 myname secondColor">
						<!-- <label class="MyNameAnimation" style="color: white;">Sanka Udeshika</label> -->
						<img src="Images/LogoHeart.png" class="logoImage">

						<div class="col-12">
							<div class="row">
								<div class="flipcontainer">


									<div class="flip mt-4">
										<div class="ff">
											<div>
												<label class="Textbackground1">System</label>
											</div>
										</div>

										<div>
											<div>
												<label class="Textbackground2"> Hospitals </label>
											</div>
										</div>

										<div>
											<div>
												<label class="Textbackground3">NewLife</label>
											</div>
										</div>
									</div>


	
								


									<div class="col-12 ">
										<div class="row">
											<span> <a
												href="https://api.whatsapp.com/send?phone=0764213724"><i
													class="bi bi-whatsapp ContactIcon"></i></a>&nbsp; <a
												href="https://web.facebook.com/tishan.sandeepa.73/"><i
													class="bi bi-facebook ContactIcon"></i></a> &nbsp; <a
												href="https://www.linkedin.com/in/sanka-udeshika-6298311bb"><i
													class="bi bi-linkedin ContactIcon"></i></a> &nbsp; <a
												href="https://youtube.com/@chapter7805?si=KP8C2fHjFakhSFu-"><i
													class="bi bi-youtube ContactIcon"></i></a> &nbsp; <a
												href="https://www.instagram.com/san_x_udesh/"><i
													class="bi bi-instagram ContactIcon"></i></a>&nbsp; <a href=""><i
													class="bi bi-github ContactIcon"></i></a>
											</span>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

					<!-- Hedder -->
					<div class="col-12 thirdColor sticky-top">
						<div class="col-12 d-lg-block d-none">
							<div class="row ">
								<div class="hedderbackgroud text-center">
									
									<div class="row d-flex justify-content-center">
										 <a
											href="" class="col-12 fs-1 MenuText">NewLife Hospitals</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- About me -->
					<div class="col-12 bg-white aboutMeSection">
						<div class="row ">
							<div class="col-6 d-lg-block d-none fadeUp  mb-5">
								<!-- image -->
								<img src="Images/Hostpitle.png" class="CamaraPhoto"
									alt="SankaCamaraPhoto">
							</div>

							<div class="col-lg-6 col-12">
								<!-- Text -->
								<div class="row">

									<div class="col-12  aboutmeDiv">
										<label class="aboutmeText DownTOUp">Welcome <br>
											NewLife Hospitals<br>
											<hr class="fw-bold">
										</label>
									</div>

									<div class="col-12">
										<p class="aboutParagraph UpToDown">"A Hospital Management
											System is a comprehensive software solution designed to
											streamline and enhance the administrative and operational
											functions of healthcare facilities. It facilitates efficient
											patient management, appointment scheduling and overall
											healthcare service coordination, ensuring a more organized
											and patient-centric approach to healthcare delivery</p>
									</div>

								</div>
							</div>

							<div class="col-12 d-block d-lg-none fadeUp ">
								<!-- image -->
								<img src="Resources/Images/1693653762616.jpg"
									class="CamaraPhoto" alt="SankaCamaraPhoto">
							</div>

						</div>
						<div class="col-12 mb-5 d-lg-block d-none">
							<div class="overTrangle">
								<div class="col-5 offset-7 FreelanceTag">
									<div class="col-12 d-flex justify-content-end">
										<h1 class="text-white fadeUp text-center">We Hired Best
											Doctors</h1>
									</div>
									<div class="col-12">
										<p class="text-white RightToLeft">Our commitment to having
											the best doctors in the world is not just a tagline; it's a
											promise we uphold every day. These esteemed healthcare
											professionals are at the forefront of their respective
											fields, pushing the boundaries of medical knowledge and
											embracing the latest advancements in healthcare technology.</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-12">
						<div class="row bg-black">
							<div class="col-12  mt-5 bg-black">
								<div class="row">

									<!-- Project files -->
									<div class="col-lg-6 col-12 offset-lg-3 backCover">
										<div class="row">
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
											<div class="patern1"></div>
										
										
											<div class="patern1 d-lg-block d-none"></div>
										</div>

										<div class="row">
											<div class="col-12 GlassCard1">
												<div class="col-12  text-center">
													<label class="WebProject">Get Started</label>
												</div>

												<div class="col-12 fadeUp d-flex justify-content-center">
													<img src="Images/doctor-patient.png" class="JainNaturalImage"
														alt="">
												</div>

												<div
													class="col-10 offset-1 mt-4 mb-5 d-flex justify-content-center GlassCard2 DownTOUp">
													<div class="row">

														<div class="col-12 text-center text-white">
															<label class="fs-1 text-white fw-bold"
																style="font-family: sans-serif;">Click Here to
																get Start</label>
														</div>

														<div class="col-12 text-center mt-4 text-white">
															<p>If you are a doctor interested in joining our team
																or a patient seeking our services, please click the
																button.</p>
														</div>

														<div class="col-12 text-center mt-3 mb-3 ">
														<form action="INDEX" method="get">
															<button  type="submit" class="glassButton1">Click Here</button>
															</form>
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

					<!-- paralax -->
					<div class="parallxOutDiv">

						<div class="parallaxDiv1">
							<div class="parallax1"></div>
							<!-- image -->
							<div class="paralaxText">
								<div class="col-12 mb-5">
									<div class="row">

										<div class="col-12 mt-5 mb LeftToRight">
											<h1>COMMUNITY WELLNESS PROGRAMS</h1>
										</div>

										<div class="col-lg-6 col-12 mt-5 LeftToRight ">
											<p>"New Life Hospitals promotes preventive health care by
												unveiling a series of programs that reach out to the
												community and help you to live a full and productive live."</p>
										</div>

										<div class="col-lg-6 col-12 RightToLeft">
											<img src="Images/medical-team.png" alt="">
										</div>

									</div>
								</div>
							</div>
							<!-- <div class="parallax2"></div>image2 -->

						</div>




					</div>



					<!-- CloseOverTrangle -->
					<div class="col-12">
						<div class="row">
							<div class="CloseOverTrangle"></div>
						</div>
					</div>



				</div>



			</div>
		</div>

		<!-- footer -->

		<div class="col-12">
			<div class="row">
				<div class="container-fluid">
					<div class="row">
						<!-- Follow me  -->
						<div class="col-12 bg-black d-lg-block d-none">
							<div class="row">

								<div class="col-12 text-center">
									<h1 class="text-white-50">Follow us on</h1>
								</div>

								<div class="col-12 mt-5">
									<div class="row text-center">

										<div class="col-2 MenuText">
											<span class="FooterIcons"> <i class="bi bi-whatsapp"></i>
											</span>
										</div>


										<div class="col-2 MenuText">
											<span class="FooterIcons"> <i
												class="bi bi-facebook ContactIcon"></i>
											</span>
										</div>

										<div class="col-2 MenuText">
											<span class="FooterIcons"> <i
												class="bi bi-linkedin ContactIcon"></i>
											</span>
										</div>

										<div class="col-2 MenuText">
											<span class="FooterIcons"> <i
												class="bi bi-youtube ContactIcon"></i>
											</span>
										</div>


										<div class="col-2 MenuText">
											<span class="FooterIcons"> <i
												class="bi bi-instagram ContactIcon"></i>
											</span>
										</div>


										<div class="col-2 MenuText">
											<span class="FooterIcons"> <i
												class="bi bi-github ContactIcon"></i>
											</span>
										</div>

									</div>
								</div>


							</div>
						</div>


						<!-- FOOTER Small -->
						<div class="col-12 bg-black d-lg-none d-block">
							<div class="row">

								<div class="col-12 mt-5">
									<div class="row text-center">

										<div class="col-2 MenuText">
											<span class="FooterIcons2"> <i class="bi bi-whatsapp"></i>
											</span>
										</div>


										<div class="col-2 MenuText">
											<span class="FooterIcons2"> <i
												class="bi bi-facebook ContactIcon"></i>
											</span>
										</div>

										<div class="col-2 MenuText">
											<span class="FooterIcons2"> <i
												class="bi bi-linkedin ContactIcon"></i>
											</span>
										</div>

										<div class="col-2 MenuText">
											<span class="FooterIcons2"> <i
												class="bi bi-youtube ContactIcon"></i>
											</span>
										</div>


										<div class="col-2 MenuText">
											<span class="FooterIcons2"> <i
												class="bi bi-instagram ContactIcon"></i>
											</span>
										</div>


										<div class="col-2 MenuText">
											<span class="FooterIcons2"> <i
												class="bi bi-github ContactIcon"></i>
											</span>
										</div>

									</div>
								</div>


							</div>
						</div>

						<!-- Horizontal Rule -->
						<div class="col-12 bg-black">
							<div class="row">
								<div class="col- 12 d-flex justify-content-center">
									<div class="col-6">
										<hr style="color: white; font-weight: bold;">
									</div>
								</div>

								<div class="col-12 d-flex justify-content-center">
									<div class="col-6 text-center">
										<small class="text-white-50">Copyright © 2023. All
											Right Reserved Designed & Developed By BANS</small>
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

	<script type="text/javascript">
		window.addEventListener("load", function() {
			preloader
			var preloader = document.getElementById("preloader");

			preloader.style.visibility = "hidden";

		})
	</script>
	<!-- Down To Up Entrest animation -->


	<!-- <script>
            var time = 0;
    
            function CircleCaller() {
    
    
    
    
                var element = document.querySelectorAll(".circleStartVisible");
    
    
                for (var i = 0; i < element.length; i++) {
    
                    var windowHeight = window.innerHeight;
                    var elementTopHeight = element[i].getBoundingClientRect().top;
                    var visibilityArea = 150;
    
    
    
    
                    if (elementTopHeight < windowHeight - visibilityArea) {
                        time = time + 1;
                        if (time == 1) {
                            let circle = document.querySelector(".circle");
                            let persentage = document.querySelector(".persentage");
    
                            let startValue = 0;
                            let EndValue = 96;
                            let speed = 20;
    
                            let progress = setInterval(() => {
                                startValue = startValue + 1;
    
                                persentage.innerHTML = startValue + "%";
                                //   circle.style.background = `conic-gradient(#7d2ae8 ${startValue * 3.6}deg, #ededed 0deg)`
                                circle.style.background = `conic-gradient(white ${startValue *3.6}deg, black 0deg)`
    
                                if (startValue == EndValue) {
                                    clearInterval(progress);
                                }
                            }, speed);
                        }
                    } else {
    
                    }
                }
            }
            window.addEventListener("scroll", CircleCaller);
        </script> -->



	<script type="text/javascript">
		function DownToUpAnimation() {
			var tag1 = document.querySelectorAll(".DownTOUp");

			for (var i = 0; i < tag1.length; i++) {
				var windowHeight = window.innerHeight;
				var TagTop = tag1[i].getBoundingClientRect().top;
				var ViewHeight = 150;

				if (TagTop < windowHeight - ViewHeight) {
					tag1[i].classList.add("active");

				} else {
					tag1[i].classList.remove("active");
				}

			}
		}

		window.addEventListener("scroll", DownToUpAnimation);
	</script>


	<!-- Up To Down entrest Animation -->

	<script type="text/javascript">
		function UpToDownAnimation() {
			var element = document.querySelectorAll(".UpToDown");

			for (var i = 0; i < element.length; i++) {

				var windowHeight = window.innerHeight;
				var elementTopHeight = element[i].getBoundingClientRect().top;
				var visibilityHeight = 200;

				if (elementTopHeight < windowHeight - visibilityHeight) {
					element[i].classList.add("active");
				} else {
					element[i].classList.remove("active");
				}
			}
		}

		window.addEventListener("scroll", UpToDownAnimation);
	</script>



	<script type="text/javascript">
		function fadeUp() {
			var element1 = document.querySelectorAll('.fadeUp');

			for (var i = 0; i < element1.length; i++) {
				var windowHeight = window.innerHeight;
				var elementTopHeight = element1[i].getBoundingClientRect().top;
				var visibilityHeight = 150;

				if (elementTopHeight < windowHeight - visibilityHeight) {
					element1[i].classList.add('active');
				} else {
					element1[i].classList.remove("active");
				}
			}
		}

		window.addEventListener("scroll", fadeUp);
	</script>



	<script type="text/javascript">
		function RightToLeft() {
			var element1 = document.querySelectorAll('.RightToLeft');

			for (var i = 0; i < element1.length; i++) {
				var windowHeight = window.innerHeight;
				var elementTopHeight = element1[i].getBoundingClientRect().top;
				var visibilityHeight = 200;

				if (elementTopHeight < windowHeight - visibilityHeight) {
					element1[i].classList.add('active');
				} else {
					element1[i].classList.remove("active")
				}
			}

		}

		window.addEventListener('scroll', RightToLeft);
	</script>



	<script type="text/javascript">
		function LeftToRight() {
			var element1 = document.querySelectorAll('.LeftToRight');

			for (var i = 0; i < element1.length; i++) {
				var windowHeight = window.innerHeight;
				var elementTopHeight = element1[i].getBoundingClientRect().top;
				var visibilityHeight = 200;

				if (elementTopHeight < windowHeight - visibilityHeight) {
					element1[i].classList.add('active');
				} else {
					element1[i].classList.remove("active")
				}
			}

		}

		window.addEventListener('scroll', LeftToRight);
	</script>







</body>
</html>