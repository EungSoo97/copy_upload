import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc2")
public class Calc2 extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int xx = Integer.parseInt(request.getParameter("x"));
		int yy = Integer.parseInt(request.getParameter("y"));
		String[] op = request.getParameterValues("oper");
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
		
		for (String operator : op) {
			// a, b
			if(operator.equals("a")) {
				out.printf("<div>%d + %d = %d</div>",xx,yy, xx+yy);				
			}
			else if(operator.equals("b")) {
				out.printf("<div>%d - %d = %d</div>",xx,yy, xx-yy);
			}
			else if(operator.equals("c")) {
				out.printf("<div>%d x %d = %d</div>",xx,yy, xx*yy);
			}
			else if(operator.equals("d")) {
				if(yy != 0) {
				DecimalFormat df = new DecimalFormat("#.##");
				String result = df.format((double)xx/(double)yy);
				out.printf("<div>%d / %d = %s</div>",xx,yy, result);
			
				}else {
					out.print("<div>0으로 나누기는 안되요~</div>");
				}
			}
			
		}
		
		
		out.print("</div>");
		
		out.print("</body>");
		
		out.print("</html>");
		
		}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}