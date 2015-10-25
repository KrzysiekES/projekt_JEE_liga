package main.java.com.example.projekt_jee_liga.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/data")
public class DataServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		

		out.println("<html><body><h2>Your data</h2>" +
				"<p>First name: " + request.getParameter("firstName") + "<br />" +
				"<p>Last name: " + request.getParameter("lastName") + "<br />" +
				"<p>position: " + request.getParameter("position") + "<br />" +
				"<p>number: " + request.getParameter("number") + "<br />" +
				"</body></html>");
		out.close();
	}

}
