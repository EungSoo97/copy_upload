package com.es.fileupload;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/FileUpload")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 1. 저장 경로(로컬, 실제 서버상 경로)
//		String savePath ="C:\\es\\web_test_img";
		String saveRealPath = request.getServletContext().getRealPath("/imgFile");
		
		System.out.println(saveRealPath);
		// 1. 값 받기(박스 포장을 했으니 그걸 까야 req(비닐)에 접근 가능)
		
		// 2. 파일 처리
		MultipartRequest mr = new MultipartRequest(request, saveRealPath,
				30*1024*1024,
				"utf-8",
				new DefaultFileRenamePolicy());

		String name = mr.getParameter("name");
		System.out.println(name);
		
		// 파일 명 읽을때
			// 아까 중복 안되게 처리한 것 때문에 올릴때 파일명이 중요한게 아니고
			// 서버상에 올라간 '그' 이름이 중요함.
		
		String pic = mr.getFilesystemName("pic");
		String etc = mr.getFilesystemName("etc");
		System.out.println(pic);
		System.out.println(etc);
		
		// 서버를 나만 쓰는게 아니라 여러 사람이 사용함
		// 로컬 파일 이름은 얼마 든지 같거나 중복 될 수 있음
		// 근데 서버에서 겹치면? 중복 되면 안되니까 파일명 처리가 중요함 a1.jpg, a2.jpg, a3.jpg ...
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("</head>");
		out.print("<body>");
		
		out.print("<h1>" + name + "</h1>");
		out.printf("<h1><img src='imgFile/%s'></h1>", pic);
		out.printf("<h1>%s</h1>", etc);
		
		out.printf("<h1><a href='imgFile/%s'>사진보기</a></h1>", pic);
		out.printf("<h1><a href='imgFile/%s'>파일 다운로드</a></h1>", etc);
		
		
		
		
		out.print("</body>");
		out.print("</html>");
		
		
	}

}
