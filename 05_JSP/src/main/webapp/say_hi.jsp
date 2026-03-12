<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		int age = Integer.parseInt(request.getParameter("age"));
		String result = "안녕";
		if (age >= 20){
			result = "안녕하세요";
		}
	
	%>
	<h1><%=result %></h1>

</body>
</html>