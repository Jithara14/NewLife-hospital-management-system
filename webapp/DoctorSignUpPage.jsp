<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor SignUp</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body style="background-color: rgb(179, 255, 255)">
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<div class="row">

					<div class="col-12 ">
						<div class="row">

							<div class="col-12 text-center">
								<h1 class="text-info">Doctor Registration Form</h1>
							</div>
							<form action="Dreg" method="post">
								<div class="col-12">
									<div class="row">

										<div class="col-6 mt-5 mb-2 text-center">
											<h5>First Name</h5>
										</div>

										<div class="col-4 mt-5 mb-2 d-grid">
											<input type="text" class="form-control  " name="fname" required="required">
										</div>
										<!-- ------------------------------------------------ -->



										<div class="col-6 mb-2 text-center">
											<h5>last Name</h5>
										</div>

										<div class="col-4 mb-2">
											<input type="text" class="form-control " name="lname" required="required">
										</div>
										<!-- ------------------------------------------------ -->


										<div class="col-6 mb-2 text-center">
											<h5>NIC</h5>
										</div>

										<div class="col-4 mb-2">
											<input type="text" class="form-control " pattern="[0-9]{12}"
												required placeholder="000000000000" name="nic" required="required">
										</div>
										<!-- ------------------------------------------------ -->




										<div class="col-6 mb-2 text-center">
											<h5>Email Address</h5>
										</div>

										<div class="col-4 mb-2">
											<input type="email" class="form-control "
												aria-describedby="emailHelp" name="email" required="required">
										</div>
										<!-- ------------------------------------------------ -->



										<div class="col-6 mb-2 text-center">
											<h5>Date of Birth</h5>
										</div>

										<div class="col-4 mb-2 ">
											<input type="date" name="birthday" class="form-control " required="required">
										</div>
										<!-- ------------------------------------------------ -->



										<div class="col-6 mb-2 text-center">
											<h5>Experience</h5>
										</div>

										<div class="col-4 mb-2">
											<input type="text" class="form-control " name="experience" required="required">
										</div>
										<!-- ------------------------------------------------ -->



										<div class="col-6 mb-2 text-center">
											<h5>Specialization</h5>
										</div>

										<div class="col-4 mb-2">
											<input type="text" class="form-control "
												name="specialization" required="required">
										</div>
										<!-- ------------------------------------------------ -->



										<div class="col-6 mb-2 text-center">
											<h5>mobile No.</h5>
										</div>

										<div class="col-4 mb-2 ">
											<input type="text" class="form-control "
												placeholder="077-123-1234"
												name="mobile" required="required">
										</div>
										<!-- ------------------------------------------------ -->



										<div class="col-6 mb-2 text-center">
											<h5>Address</h5>
										</div>

										<div class="col-4 mb-2 ">
											<input type="text" class="form-control " name="address" required="required">
										</div>
										<!-- ------------------------------------------------ -->


										<div class="col-6 mb-2 text-center">
											<h5>Gender</h5>
										</div>

										<div class="col-4 mb-2">
											<select class="form-select" name="gender" id="Cover"
												style="color: black">
												<option value="2">Female</option>
												<option value="1">Male</option>
											</select>
										</div>
										<!-- ------------------------------------------------ -->


										<div class="col-6 mb-2 text-center">
											<h5>password</h5>
										</div>

										<div class="col-4 mb-2">
											<input type="password" class="form-control " name="password" required="required">
										</div>
										<!-- ------------------------------------------------ -->


										<div class="col-12 mt-3 d-flex justify-content-center">

											<button class="btn btn-primary" type="submit">Submit</button>

										</div>
							</form>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	</div>
	</div>
</body>
</html>