package com.sw.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sw.entidades.sprint;
import com.sw.utils.sprintUtils;




	@SuppressWarnings("serial")
	public class sprintServlet extends HttpServlet{
		protected void processRequest(HttpServletRequest request, 
		         HttpServletResponse response)
		         throws ServletException, IOException {
		 
		  response.setContentType("text/html;charset=UTF-8");
		  PrintWriter out = response.getWriter();
		  try {
		   if(request.getParameter("action").equals("create")){
		     String nombreSprint= request.getParameter("nombreSprint");
		     String descripcionSprint= request.getParameter("descripcionSprint");
		     Date fechaInicioSprint= new Date();
		     SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		     fechaInicioSprint = sdf.parse(request.getParameter("fechaInicioSprint"));
		     Date fechaFinSprint= new Date();
		     fechaFinSprint = sdf.parse(request.getParameter("fechaFinSprint"));
		     String horaSprint= request.getParameter("horaSprint");
		     String proyectoSprint= request.getParameter("proyectoSprint");
		     
		     sprintUtils.insertarSprint(nombreSprint, descripcionSprint, fechaInicioSprint, fechaFinSprint, horaSprint, proyectoSprint);
		     	
		     List<sprint> sprint1 = sprintUtils.listarSprint();
			    request.setAttribute("sprint1", sprint1);
		     RequestDispatcher rd =  
		             getServletContext().getRequestDispatcher("/mostrarSprint.jsp");
		     rd.forward(request, response);
		     
		   }else if(request.getParameter("action").equals("show")){
		    List<sprint> sprint1 = sprintUtils.listarSprint();
		    request.setAttribute("sprint1", sprint1);
		    RequestDispatcher rd =  
		             getServletContext().getRequestDispatcher("/mostrarSprint.jsp");
		     rd.forward(request, response);
		   }else if(request.getParameter("action").equals("delete")){
			   sprintUtils.eliminarSprint(Long.valueOf(request.getParameter("value")));
			    List<sprint> sprint1 = sprintUtils.listarSprint();
			    request.setAttribute("sprint1", sprint1);
			    RequestDispatcher rd =  
			             getServletContext().getRequestDispatcher("/mostrarSprint.jsp");
			     rd.forward(request, response);
		   }
		  } catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally { 
		    out.close();
		  }
		 } 
	/*
	 * throws ServletException, IOException { 
				    String nombre=req.getParameter("nombre");
				    String apellido=req.getParameter("apellido");
				    Date fechanac = new Date();
				    
				 try {
				  SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
				  fechanac = sdf.parse(req.getParameter("fechanac"));  
				   
				 } catch (ParseException e) {
				   
				  System.out.println("Excepcion:" + e);
				 }
				    
				 Logica.insertarCliente(nombre,apellido,fechanac);	
				 

	 * */
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
