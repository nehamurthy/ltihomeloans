<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Form</title>
</head>
<body>
	<form action="register.do" modelAttribute="user" method="post">
		<table>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstname" id="fname"></td>
			</tr>
			<tr>
				<td>Middle Name</td>
				<td><input type="text" name="middlename" id="mname"></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastname" id="lname"></td>
			</tr>
			<tr>
				<td>Email ID</td>
				<td><input type="email" name="email" id="email"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
			<tr>
				<td>Confirm Password</td>
				<td><input type="password" name="cpassword" id="cpassword"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>