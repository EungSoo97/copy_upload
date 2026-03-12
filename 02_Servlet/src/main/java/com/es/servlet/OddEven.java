package com.es.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OddEven")
public class OddEven extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("num");
		int numInt = Integer.parseInt(num);
		String result = "";
		if(numInt == 0){
			result = "0은 쓰지 마셈";
			
		}else if(numInt%2 == 0) {
			result = "짝";
		}else{
			result = "홀";
		}
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("</head>");
		
		out.print("<body>");
		
			out.println("<div style=\"color : red; font-size : 50px; font-weight:200%;\">"+ result + "</div>");
		
		out.print("</body>");
		
		out.print("</html>");
		}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
