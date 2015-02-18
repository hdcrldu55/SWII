package com.sw.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sw.entidades.tareas;
import com.sw.utils.tareasUtils;

@SuppressWarnings("serial")
public class tareasServlet extends HttpServlet{
	protected void processRequest(HttpServletRequest request, 
	         HttpServletResponse response)
	         throws ServletException, IOException {
	
	  response.setContentType("text/html;charset=UTF-8");
	  PrintWriter out = response.getWriter();
	  try {
	   if(request.getParameter("action").equals("create")){
	     String nombret= request.getParameter("nombreTarea");
	     String resultadot= request.getParameter("resultadoTarea");
	     
	     tareasUtils.insertarTareas(nombret, resultadot);
	     RequestDispatcher rd =  
	             getServletContext().getRequestDispatcher("/MensajeTarea.jsp"); 
	     rd.forward(request, response);
	     
	   }else if(request.getParameter("action").equals("show")){
	    List<tareas> tareas1 = tareasUtils.listarTareas();
	    request.setAttribute("tareas1", tareas1);
	    RequestDispatcher rd =  
	             getServletContext().getRequestDispatcher("/mostrarTareas.jsp");
	     rd.forward(request, response);
	   }else if(request.getParameter("action").equals("delete")){
		   tareasUtils.eliminarTareas(Long.valueOf(request.getParameter("value")));
		    List<tareas> tareas1 = tareasUtils.listarTareas();
		    request.setAttribute("tareas1", tareas1);
		    RequestDispatcher rd =  
		             getServletContext().getRequestDispatcher("/mostrarTareas.jsp");
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
