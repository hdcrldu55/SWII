
<%@page import="com.sw.entidades.persona" %>
<%@page import="java.util.*"%>

<%
List<persona> personas1 = (List<persona>)request.getAttribute("personas1");
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
      <h2>Listar Personas</h2>
                                                                                            
      <div class="table-responsive">          
      <table class="table">
        <thead>
          <tr>
     <th>Id</th>
     <th>Nombre</th>
     <th>Apellido</th>
     <th>Mail</th>
     <th>Descripción</th>

        </thead>
        <tbody>
         <%
 for (int idx = 0; idx < personas1.size(); idx++) {
     persona p = (persona)personas1.get(idx);
%>
    <tr>
     <td><%= p.getIdPersona() %></td>
     <td><%= p.getNombrePersona() %></td>
     <td><%= p.getApellidoPersona() %></td>
     <td><%= p.getMailPersona() %></td>
     <td><%= p.getDescripcionPersona() %></td>
      <td> <p>
         <a href="/actualizarTeam.jsp">
          <span class="glyphicon glyphicon-repeat"></span>
        </a>
      </p></td>
       <td><p>
        <a href="#">
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

   <a href="/index.jsp">Ir al Inicio</a>

<div class=”overlay-container”>

 
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script>!window.jQuery && document.write(unescape('%3Cscript src=”jquery-1.7.1.min.js”%3E%3C/script%3E'))</script>
    <script type="text/javascript" src="demo.js"></script>
    
  </body>

</html>
