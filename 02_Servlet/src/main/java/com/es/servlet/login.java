package com.es.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("<style>");
		out.print("h2{color:red; font-size:50px;}");
		
		out.print("</style>");
		
		out.print("</head>");
		
		out.print("<body>");
		
		String result = "";
		
		
		if(id.equals("es")) {
			if(pw.equals("1004")) {
				result = "로그인 성공!";
				
			}else {
				result = "비번 오류";
				}
		}else {
			
			result = "존재하지 않는 회원 입니다";
		}
		
		out.print("<h1>ID : " + id+"</h1>");
		out.printf("<h1>PW : %s</h1>",pw);
		out.print("<h2>"+result+"</h2>");
		
		out.print("</body>");
		
		out.print("</html>");
		
		}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("<style>");
		out.print("h2{color:red; font-size:50px;}");
		
		out.print("</style>");
		
		out.print("</head>");
		
		out.print("<body>");
		
		String result = "";
		
		
		if(id.equals("es")) {
			if(pw.equals("1004")) {
				result = "로그인 성공!";
				
			}else {
				result = "비번 오류";
				}
		}else {
			
			result = "존재하지 않는 회원 입니다";
		}
		
		out.print("<h1>ID : " + id+"</h1>");
		out.printf("<h1>PW : %s</h1>",pw);
		out.print("<h2>"+result+"</h2>");
		
		out.print("</body>");
		
		out.print("</html>");
	
	}

}
