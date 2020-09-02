package com.wipro;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletQ2
 */

public class ServletQ2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletQ2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("html/text");
		PrintWriter pw = response.getWriter();
		
		String name = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String usertype = request.getParameter("usertype");
		
		if(name.equals("Priya") && pwd.equals("priya@123") && usertype.equals("A")) {
			RequestDispatcher rd = request.getRequestDispatcher("ServletAdmin");
			rd.forward(request, response);
		}
		
		else if(name.equals("Priya") && pwd.equals("priya@123") && usertype.equals("E")) {
			RequestDispatcher rd = request.getRequestDispatcher("ServletEmployee");
			rd.forward(request, response);
		}
		else 
		{
			pw.println("Sorry!! Username or password Incorrect..");
			RequestDispatcher rd = request.getRequestDispatcher("/index.html");
			rd.include(request, response);
		}
	}

}
