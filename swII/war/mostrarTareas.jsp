
<%@page import="com.sw.entidades.tareas" %>
<%@page import="java.util.*"%>

<%
List<tareas> tareas1 = (List<tareas>)request.getAttribute("tareas1");
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
      <h2>Listar Tareas de: <%= request.getParameter("nombreHU")  %></h2>
      
<a href="/CrearTareas.jsp?historiaUID=<%= request.getParameter("historiaUID") %>&nombreHU=<%= request.getParameter("nombreHU")  %>&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP") %>">Crear Tarea</a>
                                                                                            
      <div class="table-responsive">          
      <table class="table">
        <thead>
          <tr>
     <th>Id</th>
     <th>Nombre</th>
     <th>Resultado</th>
             </thead>
        <tbody>
         <%
 for (int idx = 0; idx < tareas1.size(); idx++) {
     tareas ta = (tareas)tareas1.get(idx);
%>
    <tr>
     <td><%= ta.getIdTarea() %></td>
     <td><%= ta.getNombreTarea() %></td>
     <td><%= ta.getResultadoTarea() %></td>
       <td><p>
        <a href="tareasservlet?action=delete&value=<%=ta.getIdTarea()%>&historiaUID=<%= request.getParameter("historiaUID") %>&nombreHU=<%= request.getParameter("nombreHU")  %>&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP") %>">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
      </p></td>          
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
