
<%@page import="com.sw.entidades.criteriosAceptacion" %>
<%@page import="java.util.*"%>

<%
List<criteriosAceptacion> criteriosAceptacion1 = (List<criteriosAceptacion>)request.getAttribute("criteriosAceptacion1");
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
      <h2>Listar Criterios de Aceptación </h2>
                                                                                            
      <div class="table-responsive">          
      <table class="table">
        <thead>
          <tr>
     <th>Id</th>
     <th>Descripción</th>

        </thead>
        <tbody>
         <%
 for (int idx = 0; idx < criteriosAceptacion1.size(); idx++) {
	 criteriosAceptacion ca = (criteriosAceptacion)criteriosAceptacion1.get(idx);
%>
    <tr>
     <td><%= ca.getIdCA() %></td>
     <td><%= ca.getDescripcionCA() %></td>
       <td><p>
        <a href="criteriosaceptacionservlet?action=delete&value=<%=ca.getIdCA()%>">
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
 
  <a href="/historiausuarioservlet?action=show">Ir a Historias de Usuario</a>
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
