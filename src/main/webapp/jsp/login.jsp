<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN PAGE</title>
</head>
<body>
<div align="center">
<form action="loginp">
<font color="green"><h1>WELCOME TO ADMIN LOGIN PAGE</h1></font>
${msg}
<tr><td>Email</td>: <td><input type="text" name="Email" placeholder="Enter Email Address"/></td></tr><br>
<br>
<tr><td>Password</td>	: <td><input type="password" name="Password" placeholder="Enter Password"/></td></tr><br>
<br>
<tr><td><input type="submit" value="LOGIN"/></td></tr><br>
<br>
</form>
</body>
</html>