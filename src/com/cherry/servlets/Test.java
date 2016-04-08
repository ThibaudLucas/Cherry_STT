package com.cherry.servlets;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class Test extends HttpServlet {

	
	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
	    
		String message = request.getParameter( "message" );
	    request.setAttribute( "test", message );
		this.getServletContext().getRequestDispatcher( "/WEB-INF/Test.jsp" ).forward( request, response );
	
	
	}
	
	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
	    
		String message = request.getParameter( "message" );
	    request.setAttribute( "test", message );
		this.getServletContext().getRequestDispatcher( "/WEB-INF/Test.jsp" ).forward( request, response );
	
	
	}
	
	
	
	
}
