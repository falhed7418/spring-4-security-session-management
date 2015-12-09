<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	
</head>
<body>

<h1>Welcome : ${pageContext.request.userPrincipal.name}</h1>

	<c:url var="logoutUrl" value="/logout"/>
	
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<h2>
			 <a href="javascript:formSubmit()"> Logout</a>
		</h2>
	</form>
</body>
</html>
