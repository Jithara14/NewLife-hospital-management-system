<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Header Page</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css">
.container {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
	height: 100vh;
	width: 100%;
	background-color: lightslategrey;
	color: white;
}

.insider {
	display: flex;
}

.heddingBox {
	width: 100%;
	display: flex;
	justify-content: center;
}

.hedding {
	margin-top: 80px;
	font-size: 60px;
	font-weight: bold;
	color: white;
}

.logingcontent {
	/* width: 100%; */
	border: 8px solid white;
	padding: 20px;
	border-radius: 50px;
	/* display: flex;
    justify-content: center; */
}

.signinInputs {
	font-size: 35px;
	display: flex;
	justify-content: center;
	/* margin-bottom: 50px; */
}

.inputField {
	font-size: 35px;
	border-radius: 50px;
	padding-left: 20px;
}

.Button {
	background-color: darkgray;
	color: black;
	padding: 10px;
	font-size: 50px;
	font-style: italic;
	border: 0px solid white;
	border-radius: 50px;
	margin-top: 50px;
	transition: ease-in 0.5s;
}

.Button:hover {
	background-color: gray;
	color: white;
	padding: 10px;
	font-size: 50px;
	font-style: bold;
	/* border: 1px solid black; */
	border-radius: 10px;
}

.navigation {
	height: 100vh;
	width: 210px;
	background-color: cadetblue;
}

.hedder {
	display: flex;
	justify-content: center;
}

.tabs {
	display: flex;
	justify-content: center;
	margin-top: 20px;
	/* background-color: rgba(1, 137, 255, 0.202); */
}

.tabs:hover {
	display: flex;
	justify-content: center;
	margin-top: 20px;
	background-color: rgba(1, 137, 255, 0.202);
}

.custInfo {
	border: 3px solid white;
	background-color: aquamarine;
	padding: 10px;
	/* border-radius: 50px; */
	height: 50px;
	width: auto;
	margin-top: 100px;
	margin-left: 50px;
}

.custhed {
	display: flex;
	justify-content: center;
}

.custInfoFeedback {
	border: 3px solid white;
	background-color: aquamarine;
	padding: 10px;
	/* border-radius: 50px; */
	/* height: 50px; */
	width: auto;
	margin-top: 100px;
	margin-left: 50px;
}

.custhedFeed {
	display: flex;
	justify-content: center;
}

.Button1 {
	
}
</style>
</head>
<body>



	<div class="container-fluid">
		<div class="row">


			<div class="col-12">
				<div class="row">

					<div class="col-5">
						<div class="row">

							<div class="Header">

								<h1 class="LogoIcon">
									<i class="bi bi-heart-pulse-fill"></i>
								</h1>
								<label class="newTextHeader">New</label>
								<h1 class="LifeText">Life Hospitals</h1>
							</div>
						</div>
					</div>




					<div class=" col-2 mt-5 ">
						<form action="DA" method="get">
							<button type="submit" class="btn btn-outline-info fs-3">My
								Appoinment</button>
						</form>
					</div>


					<div class=" col-2 mt-5 ">
						<form action="DD" method="post">
							<button type="submit" class="btn btn-outline-danger fs-3">Delete
								Profile</button>
						</form>
					</div>


				</div>
			</div>
		</div>
	</div>

	<hr>

</body>
</html>