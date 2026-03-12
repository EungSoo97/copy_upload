<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	margin:0;
	height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
	background:black;
	font-family:"굴림","Comic Sans MS",monospace;
	overflow:hidden;
}

/* CRT 화면 효과 */
body::after{
	content:"";
	position:fixed;
	top:0;
	left:0;
	width:100%;
	height:100%;
	background:repeating-linear-gradient(
		to bottom,
		rgba(255,255,255,0.04) 0px,
		rgba(255,255,255,0.04) 2px,
		transparent 2px,
		transparent 4px
	);
	pointer-events:none;
}

/* 폼 박스 */
form{
	background:#050505;
	padding:40px;
	border:4px solid red;
	width:360px;

	box-shadow:
	0 0 20px red,
	0 0 40px red,
	0 0 60px red inset;

	animation:shake 2s infinite;
}

/* 제목 */
h1{
	text-align:center;
	font-size:40px;
	font-weight:bold;

	background:linear-gradient(
		90deg,
		red,orange,yellow,green,cyan,blue,purple,red
	);
	background-size:400%;

	-webkit-background-clip:text;
	color:transparent;

	text-shadow:
	0 0 10px white,
	0 0 20px red;

	animation:
	rainbow 3s linear infinite,
	blink 0.7s infinite alternate;
}

/* 설명 텍스트 */
form div{
	margin-bottom:18px;
	font-size:18px;
	font-weight:bold;
	color:#00ffff;

	text-shadow:
	0 0 5px cyan,
	0 0 10px cyan;
}

/* 입력창 */
input{
	width:100%;
	padding:10px;
	margin-top:6px;

	background:black;
	border:2px solid cyan;
	color:cyan;

	font-size:16px;
	animation:glow 2s infinite alternate, spinPop 0.5s ease;
}

input:focus{
	outline:none;
	transform:scale(1.1) rotate(-1deg);
	box-shadow:
	0 0 10px cyan,
	0 0 20px cyan,
	0 0 30px cyan;
	animation:none;
}

/* 버튼 */
button{
	width:100%;
	padding:14px;
	margin-top:10px;

	border:none;

	font-size:20px;
	font-weight:bold;

	background:yellow;
	color:black;

	cursor:pointer;

	box-shadow:
	0 0 10px yellow,
	0 0 20px yellow,
	0 0 30px yellow;

	animation:flash 1s infinite;
}

@keyframes spinPop{

	0%{
		transform:rotate(0deg) scale(1);
	}

	50%{
		transform:rotate(360deg) scale(1.3);
	}

	100%{
		transform:rotate(720deg) scale(1);
	}

}

button:hover{
	transform:scale(1.2) rotate(-2deg);
	background:red;
	color:white;
}

/* 애니메이션들 */

@keyframes rainbow{
	0%{background-position:0%}
	100%{background-position:400%}
}

@keyframes blink{
	from{opacity:1;}
	to{opacity:0.6;}
}

@keyframes glow{
	from{box-shadow:0 0 5px cyan;}
	to{box-shadow:0 0 20px cyan;}
}

@keyframes flash{
	0%{transform:scale(1)}
	50%{transform:scale(1.1)}
	100%{transform:scale(1)}
}

@keyframes shake{
	0%{transform:translateX(0)}
	25%{transform:translateX(-2px)}
	50%{transform:translateX(2px)}
	75%{transform:translateX(-2px)}
	100%{transform:translateX(0)}
}
</style>
</head>
<body>
<%
String name = request.getParameter("name");
double height = Double.parseDouble(request.getParameter("height"));
double weight = Double.parseDouble(request.getParameter("weight"));
double bmi = weight / (height*100)*(height*100);

String result;

if (bmi < 18.5) {
	result = "저체중";

} else if (bmi < 22.9) {
	result = "정상";

} else if (bmi < 24.9) {
	result = "비만 전단계";

} else if (bmi < 29.9) {
	result = "1단계 비만";

} else if (bmi < 34.9) {
	result = "2단계 비만";

} else {
	result = "3단계 비만";

}



%>
<form action="bmi.html">
		<div>
			<div>
				<h1>검사 결과</h1>
			</div>
		
			<div>
				이름	: <div><%=name %></div>
			</div>
			<div>
				키	: <div><%=height %></div>
			</div>
			<div>
				체중	: <div><%=weight %></div>
			</div>

			<div>
				BMI	: <div><%=bmi %></div>
			</div>
			<div>
				결과	: <div><%=result %></div>
			</div>
			<div>
				<button>다시하기</button>
			</div>
		</div>
</form>		
	


</body>
</html>