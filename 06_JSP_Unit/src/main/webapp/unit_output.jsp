<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@font-face {
    font-family: 'CookieRun-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/CookieRun-Regular.woff');
}

body{
   font-family: 'CookieRun-Regular', sans-serif;

    background:#f4f6f8;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

body > div{
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 4px 10px rgba(0,0,0,0.1);
    width:280px;
}

body > div > div:first-child{
    font-size:20px;
    font-weight:bold;
    margin-bottom:15px;
    text-align:center;
}

form div{
    font-weight:bold;
    margin-top:10px;
    margin-bottom:5px;
    text-align:center;
}

input, select{
    width:100%;
    padding:8px;
    margin-bottom:8px;
    border:1px solid #ccc;
    border-radius:5px;
    box-sizing:border-box;
}

button{
    width:100%;
    padding:10px;
    margin-top:10px;
    border:none;
    background:#4CAF50;
    color:white;
    font-size:15px;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#45a049;
}
</style>

</head>
<body>
	<%
	
	String finResult="";
	String numResult="";
	
	double result = 0;
	String unit = request.getParameter("unit");
	String unitResult = "";
	String unitFrom = "";
	DecimalFormat df = new DecimalFormat("#.#");
	String color ="";
	String unitColor="";
		double nums = Double.parseDouble(request.getParameter("num"));
		
		if(unit.equals("length")){
			result = nums / 2.54;
			unitFrom = "cm";
			unitResult = "inch";
			color = "#FFB3BA";
			unitColor = "red";
		}else if(unit.equals("area")){
			result = nums / 3.3058;
			unitFrom = "㎡";
			unitResult = "평";
			color = "#BAE1FF";
			unitColor = "blue";
		}else if(unit.equals("temp")){
			result = (nums * 9 / 5) + 32;
			unitFrom = "&deg;C";
			unitResult = "&deg;F";
			color = "#FFFFBA";
			unitColor = "orange";
			
		}else if(unit.equals("speed")){
			result = nums * 0.621371;
			unitFrom = "km/h";
			unitResult = "mi/h";
			color = "#BAFFC9";
			unitColor = "green";
			
		}
		finResult = df.format(result);	
		numResult = df.format(nums);
	%>
	<div style="background-color: <%=color %>;">
		<div>변환 결과</div>
			<form action="test.html">
				<div><%=numResult%><span style ="color:<%=unitColor%>;"><%=unitFrom%></span></div>
				<div>↓</div>
				<div><%=finResult%><span style ="color:<%=unitColor%>;"><%=unitResult %></span></div>
		
				<button>돌아가기</button>
			</form>
	</div>	
	
	


</body>
</html>