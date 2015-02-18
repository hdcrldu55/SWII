package com.sw.servlet;


import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sw.entidades.persona;
import com.sw.utils.personaUtils;

@SuppressWarnings("serial")
public class modificarPersona extends HttpServlet{
	protected void processRequest(HttpServletRequest request, 
	         HttpServletResponse response)
	         throws ServletException, IOException {

			String nombre= request.getParameter("nombre");
			   personaUtils.eliminarCell(nombre);
		    /* String apellido= request.getParameter("apellido");
		     personaUtils.eliminarCell(apellido);
		     String mail= request.getParameter("mail");
		     personaUtils.eliminarCell(mail);
		     String descripcion= request.getParameter("descripcion");
		     personaUtils.eliminarCell(descripcion);*/
		     List<persona> personas1 = personaUtils.listarPersona();
			    request.setAttribute("personas1", personas1);
			    RequestDispatcher rd =  getServletContext().getRequestDispatcher("/mostrarPersonas.jsp");
			    rd.forward(request, response);
			    				    
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
