
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
<style>
body {
	background-color: #BFA2DB;
	font: inherit;
	background-image: url("image/shopping.jpg");
	background-repeat: no-repeat;
	background-size:100%;
	background-position:0% 0%; 
}

</style>
</head>

<body>

	<div id='container'>
		<div class='signup'>
			<form action="signupAction.jsp" method="post">

				<input type="text" name="name" placeholder="Enter Name" required>


				<input type="email" name="email" placeholder="Enter Email" required>

				<input type="number" name="mobileNumber"
					placeholder="Enter Mobile Number" required> <select
					name="securityQuestion" required>
					<option value="What was your first car?">What was your
						first car?</option>
					<option value="What is the name of your first pet?">What
						is the name of your first pet?</option>
					<option value="What elementary school did you attend?">
						What elementary school did you attend?</option>
					<option value="What is the name of the town where you were born?">
						What is the name of the town where you were born?</option>
				</select> <input type="text" name="answer" placeholder="Enter answer"
					required> 
					<input type="password" name="password"
					placeholder="Enter Password" required> <input type="submit"
					value="signup">

			</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
			<%
			String msg = request.getParameter("msg");//return value as a strint inherit sevetletrequest
			if ("valid".equals(msg)) {
			%>
			<h1>Successfully Registered !</h1>
			<%
			}
			%>
			<%
			if ("invalid".equals(msg)) {
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%
			}
			%>
			<h2 style="color: black " >Online Shopping</h2>
			<p style="color: black">The Online Shopping System is the
				application that allows the users to shop online without going to
				the shops to buy them.</p>
		</div>
	</div>

</body>
</html>