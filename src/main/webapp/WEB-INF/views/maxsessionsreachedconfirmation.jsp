<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Max sessions reached</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
</head>
<body onload='document.loginForm.username.focus();'>

	<h1>Max sessions reached</h1>


	<div id="login-box">

		<h2></h2>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm' action="<c:url value='login' />" method='POST'>

		  <table>
			<tr>
				<td>Do you want to log out the other account?</td>
				<td>  
				<input type="radio" name="logoutLeastRecentlyUsed" value="true" checked>Yes
  				<br>
  				<input type="radio" name="logoutLeastRecentlyUsed" value="false">No</td>
			</tr>
			<tr><td>
			<input type='text' name='username' value='${param.username}' hidden="true" />
			<input type='text' name='password' value='${param.password}' hidden="true" />
			</td>
			</tr>
			
			<tr>
				<td colspan='2'><input name="submit" type="submit" value="submit" /></td>
			</tr>
		  </table>
		</form>
	</div>

</body>
</body>
</html>