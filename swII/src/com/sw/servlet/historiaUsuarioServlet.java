package com.sw.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sw.entidades.historiaUsuario;
import com.sw.utils.historiaUsuarioUtils;

@SuppressWarnings("serial")
public class historiaUsuarioServlet extends HttpServlet{
	protected void processRequest(HttpServletRequest request, 
	         HttpServletResponse response)
	         throws ServletException, IOException {
	 
	  response.setContentType("text/html;charset=UTF-8");
	  PrintWriter out = response.getWriter();
	  try {
	   if(request.getParameter("action").equals("create")){
		   String nombreHU = request.getParameter("nombrehu");
	     String responsableHU = request.getParameter("responsablehu");
	     String riesgoHU= request.getParameter("riesgohu");
	     String prioridadHU= request.getParameter("prioridadhu");
	     String esfuerzoHU= request.getParameter("esfuerzohu");
	     String descripcionHU= request.getParameter("descripcionhu");
	     String observacionHU= request.getParameter("observacionhu");
	     
	     historiaUsuarioUtils.insertarHistoriaUsuario(nombreHU, responsableHU, riesgoHU, prioridadHU, esfuerzoHU, descripcionHU, observacionHU);
	     List<historiaUsuario> historiaUsuario1 = historiaUsuarioUtils.listarHistoriaUsuario();
		    request.setAttribute("historiaUsuario1", historiaUsuario1);
		    RequestDispatcher rd =  
		             getServletContext().getRequestDispatcher("/mostrarHistoriasUsuario.jsp");
		     rd.forward(request, response);
	     
	   }else if(request.getParameter("action").equals("show")){
	    List<historiaUsuario> historiaUsuario1 = historiaUsuarioUtils.listarHistoriaUsuario();
	    request.setAttribute("historiaUsuario1", historiaUsuario1);
	    RequestDispatcher rd =  
	             getServletContext().getRequestDispatcher("/mostrarHistoriasUsuario.jsp");
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
