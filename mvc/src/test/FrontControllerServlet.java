package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("/front")	// Servlet ver. 3.0 이상
public class FrontControllerServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// web.xml : '/'	
		// all request		>> 	FrontControllerServlet
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<hr><h1> FrontControllerServlet </h1><hr>");
		
		
		out.println(request.getRequestURL() + "<hr>");
		out.println(request.getRequestURI() + "<hr>");
		
		String s[] = request.getRequestURI().split("/");
		out.println("<h1>" + s[s.length-1] + "</h1><hr>");
		
		System.out.println(s[s.length-1]);
		
		//
		HandlerMapping mapping = new HandlerMapping();
		Controller controller = mapping.getController(s[s.length-1]);
		String viewName = controller.handleRequest(request, response);
		
		RequestDispatcher rd = request.getRequestDispatcher(viewName);
		rd.forward(request, response);
		
	}

}
