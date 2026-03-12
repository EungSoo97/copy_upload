<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="reg.css" />
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
// 1. 값 받기
String n = request.getParameter("name");
String i = request.getParameter("id");
String p = request.getParameter("pw");
String g = request.getParameter("gender");
String a = request.getParameter("addr");
String[] inter = request.getParameterValues("interest");
String intro = request.getParameter("introduce");

// 콘솔에 다 출력
System.out.println(n);
System.out.println(i);
System.out.println(p);
System.out.println(g);
System.out.println(a);
String inter2 = "";
if(inter !=null) {
	for (String ss : inter) {
	
		inter2 += ss+" ";
	}
}else {
	inter2 = "취미 없음";
}
System.out.println(intro);




%>


      <div class="container">
        <div class="items">
          <div class="item1">Name</div>
          <div class="item2">
            <%=n %>
          </div>
        </div>
        <div class="items">
          <div class="item1">ID</div>
          <div class="item2">
			<%=i %>
          </div>
        </div>
        <div class="items">
          <div class="item1">PW</div>
          <div class="item2">
			<%=p %>
          </div>
        </div>
        <div class="items">
          <div class="item1">Gender</div>
          <div class="item2">
			<%=g %>
          </div>
        </div>
        <div class="items">
          <div class="item1">Addr</div>
          <div class="item2">
            <%=a %>
          </div>
        </div>
        <div class="items inter">
          <div class="item1">Interest</div>
          <div class="item2 interest">
            <div>
              <%=inter2 %>
            </div>
        </div>
        </div>
        <div class="items text">
          <div class="item1">Introduce</div>
          <div class="item2">
			<%=intro %>
          </div>
        </div>
      </div>
   

</body>
</html>