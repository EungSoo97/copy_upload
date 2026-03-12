<%@ page import="com.example.test.Information" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        // 값만 받는 곳.
        Information info = (Information) request.getAttribute("information");

    %>

veiw- 계산 x (model 에서 이미 다 하고 온거임)
<hr>
<h1>- 회원 정보 확인-</h1>
<h1> 이름 : <%= info.getName()%></h1>
<h1> 나이 : <%= info.getAge()%></h1>
<h1> 성별 : <%= info.getGender()%></h1>
<h1> 관심사 : <%= info.getHabit()%></h1>

</body>
</html>
