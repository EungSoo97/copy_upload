<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public double getMok(double a, double b) {
		
		return a / b;
		
	}
	%>

	<%
		// 1.값 받기
		int x = Integer.parseInt(request.getParameter("xx"));
		int y = Integer.parseInt(request.getParameter("yy"));
		
		
		
		int hap = x + y;
		int cha = x - y;
		int gob = x * y;
		double mok = (double)x / (double)y;
		double mok2 = getMok((double)x, (double)y);
		String mokResult = String.format("%.2f", mok);
	%>
	
	<!-- 
		현재 상태에서 총 합이 10이 넘을 때만 결과 화면 나오게.
	
	 -->
	 <%
	 	if(hap > 10){
	 
	 %>
	<div style="background-color: ivory; border: 1px solid"> 
	
	<%= x %> + <%= y %> = <%= hap %> <br>
	<%= x %> - <%= y %> = <%= cha %> <br>
	<%= x %> x <%= y %> = <%= gob %> <br>
	<%= x %> / <%= y %> = <%= mokResult %> <br>
	<%= mok2 %> <br>
	<%= getMok(x, y) %>
	</div>

	<% } %>
</body>
</html>