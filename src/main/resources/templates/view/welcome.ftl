<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<title>addUser!</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<form action="/add" method="post">
		username:<input name="userName" type="text" /> <br/>
		password:<input name="password" type="text" /> <br/>
		<input type="submit" value="保存" />
	</form>
</body>
</html>