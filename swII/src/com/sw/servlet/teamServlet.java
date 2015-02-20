package com.sw.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.annotations.Persistent;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sw.entidades.team;

import com.sw.utils.teamUtils;

@SuppressWarnings("serial")
public class teamServlet extends HttpServlet{
	protected void processRequest(HttpServletRequest request, 
	         HttpServletResponse response)
	         throws ServletException, IOException {
	
	  response.setContentType("text/html;charset=UTF-8");
	  PrintWriter out = response.getWriter();
	  try {
	   if(request.getParameter("action").equals("create")){
	     String nombrete= request.getParameter("nombreTeam");
	     String descripcionte= request.getParameter("descripcionTeam");
	     String proyectote = request.getParameter("proyectoT");
	     
	     teamUtils.insertarTeam(nombrete, descripcionte, proyectote);
	     
	     List<team> team1 = teamUtils.listarTeamProyecto(proyectote);// listarTeam();
		    request.setAttribute("team1", team1);
		    RequestDispatcher rd =  
		             getServletContext().getRequestDispatcher("/mostrarTeam.jsp");
		     rd.forward(request, response);
		     	     
	   }else if(request.getParameter("action").equals("show")){		     		  
	    List<team> team1 = teamUtils.listarTeamProyecto(request.getParameter("proyectoID"));// listarTeam();
	    request.setAttribute("team1", team1);
	    RequestDispatcher rd =  
	             getServletContext().getRequestDispatcher("/mostrarTeam.jsp");
	     rd.forward(request, response);
	 
	   }else if(request.getParameter("action").equals("delete")){
		    teamUtils.eliminarTeam(Long.valueOf(request.getParameter("value")));
		    List<team> team1 = teamUtils.listarTeamProyecto(request.getParameter("proyectoID"));
		    request.setAttribute("team1", team1);
		    RequestDispatcher rd =  
		             getServletContext().getRequestDispatcher("/mostrarTeam.jsp");
		     rd.forward(request, response);
	   }
	  } finally { 
	    out.close();
	  }
	 } 

	 @Override
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	     processRequest(request, response);
	 } 
	 
	 @Override
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	     processRequest(request, response);
	 }
	 
	 
}
