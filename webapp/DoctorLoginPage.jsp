<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login Page</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/style.css" />
<style>
body {
	background-image: url("Images/wall.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	height: 100vh;
}
</style>
</head>
<body>

	<div class="container-fluid ">

		<div class="col-12">
			<div class="row mt-5">
				<div class="col-4 mx-2 d-flex justify-content-end">
					<img src="Images/doctor.jpg" style="width: 250px; height: auto;"
						alt="">
				</div>


				<div class="col-6 glassOne">
					<div class="row">

						<h1 class="loginTopicTest">
							<u>Doctor Login</u>
						</h1>

						<form action="DLogin" method="post">
							<div class="col-12" style="margin-left: 100px;">
								<div>
									<label for="fname"
										style="margin-top: 50px; font-weight: bold; font-family: Tahoma, Verdana, sans-serif; color: rgb(65, 83, 88);">Email</label>
								</div>
								<div>

									<input
										style="width: 450px; background-color: rgb(225, 255, 255); margin-top: 15px; font-weight: bold;"
										id="username" type="text" class="form-control" name="username"
										placeholder="Email"> <br>
								</div>
								<div>
									<label for="fname"
										style="font-weight: bold; font-family: Tahoma, Verdana, sans-serif; color: rgb(65, 83, 88);">Password</label>
								</div>
								<div>
									<input
										style="width: 450px; background-color: rgb(225, 255, 255); margin-top: 15px; font-weight: bold;"
										id="password" type="password" class="form-control"
										name="password" placeholder="Password">
								</div>
							</div>

							<div>
								<button type="submit"
									class="btn btn-primary mt-5 mx-auto d-block " style="">Login</button>
							</div>
						</form>

						<form action="DCREATE" method="get">
							<div>
								<button type="submit"
									class="btn btn-info mt-2 mx-auto d-block text-white " style="">SignUp</button>
							</div>
						</form>




					</div>
				</div>
			</div>
		</div>

	</div>

	</div>

</body>
</html>