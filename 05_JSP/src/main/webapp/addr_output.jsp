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
		String addr = request.getParameter("addr");	
	%>
	
	<h1>당신의 주소는 <%=addr %> 입니다</h1>


</body>
</html>