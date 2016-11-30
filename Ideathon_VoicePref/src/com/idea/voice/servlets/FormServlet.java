package com.idea.voice.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FormServlet
 */
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		System.err.println("here>>>>");
		String currentPath = request.getParameter("key");
		if(currentPath.equalsIgnoreCase("Call"))
		{
			session.invalidate();
			response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().write("Thank you");
			return;
		}
		if(session!=null)
		{
			if(session.getAttribute("path")!=null)
			{
				String updatedPath = (String)session.getAttribute("path");
				updatedPath = updatedPath+currentPath;
				session.setAttribute("path", updatedPath);
			}
			else
			{
				session.setAttribute("path", currentPath);
			}
		}
		System.err.println((String)session.getAttribute("path"));
		response.setContentType("text/html;charset=UTF-8");
	    response.getWriter().write("hello. this is output");
	}

}
