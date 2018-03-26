<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

function adminlogin() {
	document.forms[0].action="${pageContext.request.contextPath}/adminlogin";
	document.forms[0].submit();
}
function userlogin() {
	document.forms[0].action="${pageContext.request.contextPath}/userlogin";
	document.forms[0].submit();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN PAGE</title>
</head>
<body>
<form action="">
<div align="center">
<tr><td><input type="button" onclick="adminlogin()" value="ADMIN LOGIN"/></td></tr><br>
<br>
<tr><td><input type="button" onclick="userlogin()" value="USER LOGIN"/></td></tr><br>
<br>
</div>
</body>
</form>
</html>