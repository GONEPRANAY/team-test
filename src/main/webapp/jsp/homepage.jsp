<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

function login() {
	document.forms[0].action="${pageContext.request.contextPath}/login";
	document.forms[0].submit();
}
function register() {
	document.forms[0].action="${pageContext.request.contextPath}/register";
	document.forms[0].submit();
}
</script>
<style>
.topright {
    position: absolute;
    top: 8px;
    right: 16px;
    font-size: 18px;
    }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome To Shopping Cart</title>

</head>
<body>
<form action="">
<div align="center">${success}</div>
<div align="center">${tellme}</div>
${msg2}
<div class="topleft">
<input type="button" onclick="login()" value="LOGIN"/>
</div>
<div align="center"><h1>WELCOME TO THE HOME PAGE</h1></div>
<div class="topright">
<input type="button" onclick="register()" value="REGISTER"/>
</div>
</body>
</form>
</html>