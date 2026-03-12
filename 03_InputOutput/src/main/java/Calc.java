import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc")
public class Calc extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int xx = Integer.parseInt(request.getParameter("x"));
		int yy = Integer.parseInt(request.getParameter("y"));
		System.out.println(xx);
		System.out.println(yy);

		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("<style>");
		out.print(".box{background-color:ivory; width:500px; border: 2px solid;}");
		
		out.print("</style>");
		
		out.print("</head>");
		
		out.print("<body>");
		
		
		
		
		out.print("<div class =\"box\">");

		out.printf("<div>%d + %d = %d</div>",xx,yy, xx+yy);
		out.printf("<div>%d - %d = %d</div>",xx,yy, xx-yy);
		out.printf("<div>%d x %d = %d</div>",xx,yy, xx*yy);
		out.printf("<div>%.0f / %.0f = %.2f</div>",(double)xx,(double)yy, (double)xx/yy);
		
		
		out.print("</div>");
		
		out.print("</body>");
		
		out.print("</html>");
		
		}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}