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

//import com.sw.entidades.persona;
import com.sw.entidades.proyecto;

import com.sw.utils.personaUtils;
import com.sw.utils.proyectoUtils;
//import com.sw.utils.personaUtils;



@SuppressWarnings("serial")
public class proyectoServlet extends HttpServlet{
	protected void processRequest(HttpServletRequest request, 
	         HttpServletResponse response)
	         throws ServletException, IOException {
	 
	  response.setContentType("text/html;charset=UTF-8");
	  PrintWriter out = response.getWriter();
	  try {
	   if(request.getParameter("action").equals("create")){
	     String nombreProyecto= request.getParameter("nombreProyecto");
	     String descripcionProyecto= request.getParameter("descripcionProyecto");
	     Date fechaProyecto= new Date();
	     SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	     fechaProyecto = sdf.parse(request.getParameter("fechaProyecto"));
	    		 
	     
	     proyectoUtils.insertarProyecto(nombreProyecto, descripcionProyecto, fechaProyecto);	     
	     RequestDispatcher rd =  
	             getServletContext().getRequestDispatcher("/index.jsp");
	     rd.forward(request, response);
	     
	   }else if(request.getParameter("action").equals("show")){
	    List<proyecto> proyecto1 = proyectoUtils.listarProyecto();
	    request.setAttribute("proyecto1", proyecto1);
	    RequestDispatcher rd =  
	             getServletContext().getRequestDispatcher("/mostrarProyecto.jsp");
	     rd.forward(request, response);
	   }else if(request.getParameter("action").equals("delete")){
		   proyectoUtils.eliminarProyecto(Long.valueOf(request.getParameter("value")));
		    List<proyecto> proyecto1 = proyectoUtils.listarProyecto();
		    request.setAttribute("proyecto1", proyecto1);
		    RequestDispatcher rd =  
		             getServletContext().getRequestDispatcher("/mostrarProyecto.jsp");
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