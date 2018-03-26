<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1><font color="blue"> LIPCART ONLINE SHOPPING</h1></font>
<form action="${pageContext.request.contextPath}/register"  method="post">
UserName<input type="text" name="uname"/><br>
Password:<input type="password"name="password"/><br>
Mobile:<input type="text"name="mobile"/><br>
Address:<input type="text"name="address"/><br>
<input type="submit" value="Register"/>
</div>
</form>
</body>
</html>