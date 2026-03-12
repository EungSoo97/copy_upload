<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.odd{
	color : purple;
}
.even{
	color: tomato;
}
</style>
</head>
<body>
	<%
		// 값 받기.
		int num = Integer.parseInt(request.getParameter("number"));
		if (num % 2 == 1){ %>
			<h1 class="odd"> 홀 </h1>
		<% } else { %>
		
		<h1 class="even"> 짝 </h1>
		<% } %>
	


</body>
</html>