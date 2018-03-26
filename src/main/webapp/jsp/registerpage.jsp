<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

function adminreg() {
	document.forms[0].action="${pageContext.request.contextPath}/adminreg";
	document.forms[0].submit();
}
function userreg() {
	document.forms[0].action="${pageContext.request.contextPath}/userreg";
	document.forms[0].submit();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
</head>
<body>
<form action="">
<div align="center">
<tr><td><input type="button" onclick="adminreg()" value="ADMIN REGISTER"/></td></tr><br>
<br>
<tr><td><input type="button" onclick="userreg()" value="USER REGISTER"/></td></tr><br>
<br>
</div>
</body>
</form>
</html>