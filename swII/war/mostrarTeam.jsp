
<%@page import="com.sw.entidades.team" %>
<%@page import="java.util.*"%>

<%
List<team> team1 = (List<team>)request.getAttribute("team1");
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
      <h2>Mostrar Team de: <%=nombre%></h2>    
      
<a href="/CrearTeam.jsp?proyectoID=<%=proyecto%>&nombreP=<%=nombre%>">Crear Team</a>                                         
                                                                                          
      <div class="table-responsive">          
      <table class="table">
        <thead>
          <tr>
     <th>Proyecto</th>
        <th>Id</th>
     <th>Nombre</th>
     <th>Descripción</th>


        </thead>
        <tbody>
         <%
 for (int idx = 0; idx < team1.size(); idx++) {
	 team te = (team)team1.get(idx);
%>
    <tr>
    <td><%= te.getProyectoHU()  %></td>
    <td><%=  te.getIdTeam()%></td>
     <td><%= te.getNombreTeam()%></td>
     <td><%= te.getDescripcionTeam() %></td>
     
    <td> <p>
         <a href="/actualizarTeam.jsp">
          <span class="glyphicon glyphicon-repeat"></span>
        </a>
      </p></td>
       <td><p>
        <a href="teamservlet?action=delete&value=<%=te.getIdTeam()%>&proyectoID=<%=proyecto%>&nombreP=<%=nombre%>">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
      </p></td>
     <th><a href="/CrearPersona.jsp?teamID=<%=te.getIdTeam()%>&nombreT=<%=te.getNombreTeam()%>&proyectoID=<%=proyecto%>&nombreP=<%=nombre%>">Crear Persona</a><br></th>
     <th>   <a href="/personaservlet?action=show&teamID=<%=te.getIdTeam()%>&nombreT=<%=te.getNombreTeam()%>&proyectoID=<%=proyecto%>&nombreP=<%=nombre%>"> Listar Personas</a><br></th>  
    </tr>

<%}%>

        </tbody>
      </table>
      </div>
    </div>
   <div style="text-align: center;">
 <span>
<br>
<br>  
<a href="/proyectoservlet?action=show">Ir a Proyectos</a>
<br>
<br> 
    <a href="/index.jsp">Ir al Inicio</a>

<div class=”overlay-container”>



<div class=”overlay-container”>

 
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script>!window.jQuery && document.write(unescape('%3Cscript src=”jquery-1.7.1.min.js”%3E%3C/script%3E'))</script>
    <script type="text/javascript" src="demo.js"></script>
    
  </body>

</html>
