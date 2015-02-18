<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.sw.entidades.*"%>
<%@page import="com.sw.utils.*"%>
<%@page import="com.sw.servlet.*"%>
<%@page import="java.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body background="img/fondo.png">
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   <title>.:: Actualizar Team::. </title>
 </head>
  <span ><h1>ACTUALIZACION DE TEAM</h1></span>
  
<form action="/actualizarteam" method="get">
  <table border="0">
  <%
					List<team> aux1 = teamUtils.listarTeam();
					for (team te : aux1) {
				%>
   <tr>
       <td>Nombre de Team: </td>
       <label class="control-label col-sm-2"></label> 
       <td><input value="<%= te.getNombreTeam()%>" name="nombreTeam"/></td>  
  </tr>    
     <tr>
        <td>Descripción: </td>
       <label class="control-label col-sm-2"></label> 
       <td><input type="text" name="descripcionTeam" value="<%=te.getDescripcionTeam()%>"/></td>  
  </tr>   
  
      <tr>
       <td colspan="2" bgcolor="#ffffff" align="left">
         <input type="hidden" name="action" value="update"/>
       <input type="submit" value="Actualizar" >
       </td>
      </tr>
   </table>
        <div style="text-align: center;">
 <span>

   <a href="/index.jsp">Ir al Inicio</a>
   
  </span>
</div>
<%
						}
				%>

   </form>
    </body>
</html>
