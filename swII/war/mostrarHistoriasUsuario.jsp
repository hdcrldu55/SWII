
<%@page import="com.sw.entidades.historiaUsuario" %>
<%@page import="java.util.*"%>

<%
List<historiaUsuario> historiaUsuario1 = (List<historiaUsuario>)request.getAttribute("historiaUsuario1");
String proyecto = request.getParameter("proyectoID");
String nombre = request.getParameter("nombreP");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body background="img/fondo.png">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  </head>

  <body>
    <div class="container">
      <h2>Listar Historia de Usuario de: <%=nombre%></h2> 
                                                  
<a href="/CrearHistoriasUsuario.jsp?proyectoID=<%=proyecto%>&nombreP=<%=nombre%>">Crear Historia de Usuario</a>  
                                                                                         
      <div class="table-responsive">          
      <table class="table">
        <thead>
          <tr>
     <th>Proyecto</th>
     <th>Id</th>
     <th>Nombre</th>
     <th>Responsable</th>
     <th>Riesgo</th>
     <th>Prioridad</th>
     <th>Esfuerzo</th>
     <th>Descripción</th>
     <th>Observación</th>

        </thead>
        <tbody>
         <%
 for (int idx = 0; idx < historiaUsuario1.size(); idx++) {
	 historiaUsuario hu = (historiaUsuario)historiaUsuario1.get(idx);
%>
    <tr>
    <td><%=  hu.getProyectoHU()%></td>
    <td><%=  hu.getIdHusuario()%></td>
     <td><%= hu.getNombreHU() %></td>
     <td><%= hu.getResponsableHU() %></td>
     <td><%= hu.getRiesgoHU() %></td>
     <td><%= hu.getPrioridadHU() %></td>
     <td><%= hu.getEsfuerzoHU() %></td>
     <td><%= hu.getDescripcionHU() %></td>
     <td><%= hu.getObservacionHU() %></td>
     <th><a href="/CrearTareas.jsp?historiaUID=<%= hu.getIdHusuario()%>&nombreHU=<%= hu.getNombreHU() %>&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP") %>">Crear Tarea</a><br></th>
       <th>   <a href="/tareasservlet?action=show&historiaUID=<%= hu.getIdHusuario()%>&nombreHU=<%= hu.getNombreHU() %>&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP") %>"> Listar Tarea</a><br></th>  
 <th><a href="/CrearCriteriosAceptacion.jsp?historiaUID=<%= hu.getIdHusuario()%>&nombreHU=<%= hu.getNombreHU() %>&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP") %>">Crear Criterio de Aceptación</a><br></th>
       <th>   <a href="/criteriosaceptacionservlet?action=show&historiaUID=<%= hu.getIdHusuario()%>&nombreHU=<%= hu.getNombreHU() %>&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP") %>"> Listar Criterio de Aceptación</a></th>  
       <th></th>
       <th>   <a href="historiausuarioservlet?action=delete&value=<%=hu.getIdHusuario()%>&proyectoID=<%=proyecto%>&nombreP=<%=nombre%>">Eliminar</a><br></th>
    </tr>
<%}%>

        </tbody>
      </table>
      </div>
    </div>
   <div style="text-align: center;">
 <span>
 
 
 <a href="/proyectoservlet?action=show">Ir a Proyectos</a>
<br>
<br>
   <a href="/index.jsp">Ir al Inicio</a>

<div class=”overlay-container”>

 
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script>!window.jQuery && document.write(unescape('%3Cscript src=”jquery-1.7.1.min.js”%3E%3C/script%3E'))</script>
    <script type="text/javascript" src="demo.js"></script>
    
  </body>

</html>
