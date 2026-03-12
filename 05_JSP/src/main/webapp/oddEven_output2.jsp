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
		String result = "짝";
		String name = "even";
		if (num % 2 == 1){
			result = "홀";
			name = "odd";
		}
			%>
			<h1 class="<%=name%>"> <%=result %></h1>
			 

	


</body>
</html>