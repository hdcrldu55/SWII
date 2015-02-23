<%@page import="java.util.*"%>
<%String historiaCA = request.getParameter("historiaUID"); %>
<%String sprintNombre = request.getParameter("sprintNombre"); %>
<%String sprintID = request.getParameter("sprintID"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body background="img/fondo.png">

 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <title>.:: Crear Criterios de Aceptación::. </title>
 </head>
 <span>
  <a href="/index.jsp">Ir al indice</a><br>
 </span>
 <span ><h1>Crear Criterios de Aceptación para: <%=request.getParameter("nombreHU")%></h1></span>
 
  <form action="/criteriosaceptacionservlet" method="get">
  <table border="0">
  <input type="hidden" name="historiaCA" value="<%= historiaCA %>"/>
  <tr>
  <td>Historia de Usuario:</td>
       <label class="control-label col-sm-1"></label> 
       <td><input type="text" name="historiaCA" value="<%= historiaCA %>" disabled="disabled" /></td>
  </tr>
   <tr>
       <td>Criterio de Aceptación: </td>
       <label class="control-label col-sm-2"></label> 
       
     <td>  <TEXTAREA <input COLS=40 ROWS=5 NAME="descripcionCA" required/>>
           </TEXTAREA> 
      </td>
     
   
  </tr>    
      <tr>
       <td colspan="2" bgcolor="#ffffff" align="left">
       <input type="hidden" name="historiaUID" value="<%= request.getParameter("historiaUID")%>"/>
       <input type="hidden" name="nombreHU" value="<%= request.getParameter("nombreHU")%>"/>
       <input type="hidden" name="sprintID" value="<%= request.getParameter("sprintID")%>"/>
       <input type="hidden" name="nombreSprint" value="<%= request.getParameter("nombreSprint")%>"/>
       <input type="hidden" name="action" value="create"/>
       <input type="submit" value="Registrar" >
       </td>
      </tr>
   </table>
        <div style="text-align: center;">
 <span>
 <a href="/proyectoservlet?action=show">Ir a Proyectos</a>
<br>
<br> 

<br>
<br>
   <a href="/index.jsp">Ir al Inicio</a>
   
  </span>
</div>
   </form>
 </body>
</html>




