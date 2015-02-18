
<%@page import="com.sw.entidades.historiaUsuario" %>
<%@page import="java.util.*"%>

<%
List<historiaUsuario> historiaUsuario1 = (List<historiaUsuario>)request.getAttribute("historiaUsuario1");
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
      <h2>Listar Historia de Usuario</h2>
                                                                                            
      <div class="table-responsive">          
      <table class="table">
        <thead>
          <tr>
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
    <td><%=  hu.getIdHusuario()%></td>
     <td><%= hu.getNombreHU() %></td>
     <td><%= hu.getResponsableHU() %></td>
     <td><%= hu.getRiesgoHU() %></td>
     <td><%= hu.getPrioridadHU() %></td>
     <td><%= hu.getEsfuerzoHU() %></td>
     <td><%= hu.getDescripcionHU() %></td>
     <td><%= hu.getObservacionHU() %></td>
     <th><a href="/CrearTareas.jsp">Crear Tarea</a><br></th>
       <th>   <a href="/tareasservlet?action=show"> Listar Tarea</a><br></th>  
 <th><a href="/CrearCriteriosAceptacion.jsp">Crear Criterio de Aceptación</a><br></th>
       <th>   <a href="/criteriosaceptacionservlet?action=show"> Listar Criterio de Aceptación</a><br></th>  
    </tr>

<%}%>

        </tbody>
      </table>
      </div>
    </div>
   <div style="text-align: center;">
 <span>

   <a href="/index.jsp">Ir al Inicio</a>

<div class=”overlay-container”>

 
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script>!window.jQuery && document.write(unescape('%3Cscript src=”jquery-1.7.1.min.js”%3E%3C/script%3E'))</script>
    <script type="text/javascript" src="demo.js"></script>
    
  </body>

</html>
