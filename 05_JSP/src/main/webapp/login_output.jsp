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
    background:linear-gradient(135deg,#74ebd5,#ACB6E5);
    font-family:Arial, Helvetica, sans-serif;
}

.container{
    background:white;
    padding:40px;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
    width:350px;
    text-align:center;
}

.err{
    color:#e74c3c;
}

.access{
    color:#2ecc71;
}

.info{
    margin-top:20px;
    font-size:16px;
    color:#555;
}

</style>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String result="없는 회원 정보";
	String name = "err";
	if(id.equals("es")){
		if(pw.equals("1004")){
			result = "로그인 성공!";
			name = "access";
		}else{
			result = "비밀번호 오류";
			name = "err";
		}
	}
	%>
	<div class="container">
		<h1 class="<%=name%>"><%=result%></h1>
		<div class="info">
			<h1> ID : <%= id %></h1>
			<h1> PW : <%= pw %></h1>
		</div>
	</div>
	
</body>
</html>