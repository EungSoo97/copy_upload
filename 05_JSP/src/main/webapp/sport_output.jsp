<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
		String[] sports = request.getParameterValues("chk");
		
		String sportss = "";
		if(sports !=null) {
			for (String sport : sports) {
				
				sportss += sport+" ";
			}
		}else {
			sportss = "스포츠 안좋아함";
		}
		
		String korSports = "";
		if(sports !=null) {
			for (String sport : sports) {
				switch (sport){
					case "soccer":
						korSports += "축구 ";
						break;
					
					case "basketball":
						korSports += "농구 ";
						break;
					
					case "badminton":
						korSports += "배드민턴 ";
						break;
					
				}
				
			}
		}else {
			korSports = "스포츠 안좋아함";
		}
		
	%>
	<h1><%= sportss %></h1>
	<h1><%= korSports %></h1>
	
	<hr>
	version2.
	
	<%
		Map<String, String> vals = new HashMap();
			vals.put("soccer", "축구");
			vals.put("basketball", "농구");
			vals.put("badminton", "배드민턴");
			
			for(String s : sports){ %>
				<h1> <%=vals.get(s) %> </h1>
				
				
			<% } %>
		


</body>
</html>