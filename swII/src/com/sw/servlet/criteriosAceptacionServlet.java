package com.sw.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sw.entidades.criteriosAceptacion;
import com.sw.utils.criteriosAceptacionUtils;



@SuppressWarnings("serial")
public class criteriosAceptacionServlet extends HttpServlet{
	protected void processRequest(HttpServletRequest request, 
	         HttpServletResponse response)
	         throws ServletException, IOException {
	 
	  response.setContentType("text/html;charset=UTF-8");
	  PrintWriter out = response.getWriter();
	  try {
	   if(request.getParameter("action").equals("create")){
	     String descripcionCA= request.getParameter("descripcionCA");
	     	     
	     criteriosAceptacionUtils.insertarcriteriosAceptacion(descripcionCA);
	     RequestDispatcher rd =  
	             getServletContext().getRequestDispatcher("/MensajeHU.jsp"); 
	     rd.forward(request, response);
	     
	   }else if(request.getParameter("action").equals("show")){
	    List<criteriosAceptacion> criteriosAceptacion1 =  criteriosAceptacionUtils.listarCriteriosAceptacion();
	    request.setAttribute("criteriosAceptacion1", criteriosAceptacion1);
	    RequestDispatcher rd =  
	             getServletContext().getRequestDispatcher("/mostrarCriteriosAceptacion.jsp");
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
