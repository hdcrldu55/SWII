<%@page import="java.util.*"%>
<%String teamID = request.getParameter("teamID"); 
String nombreT = request.getParameter("nombreT");%>

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
  <title>.:: Crear Persona::. </title>
 </head>
 <span>
  <a href="/index.jsp">Ir al indice</a><br>
 </span>
 <span ><h1>Crear una Persona para: <%=nombreT%></h1></span>
 
  <form action="/personaservlet" method="get">
  <table border="0">
  <tr>
  		<input type="hidden" name="team" value="<%=teamID%>"/>
       <td>Team:</td>
       <label class="control-label col-sm-2"></label> 
       <td><input type="text" name="team" value="<%=teamID%>" disabled="disabled"/></td>
  </tr>

   <tr>
       <td>Nombre:</td>
       <td><input type="text" name="nombre" required/></td>
  </tr>
   <tr>
       <td>Apellido:</td>
       <td><input type="text" name="apellido" required/></td>
  </tr>
   <tr>
       <td>Mail:</td>
       <td><input type="text" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" name="mail" required/></td>
  </tr>
   <tr>
<TR>
	<TD>Ocupación</TD>
	<TD>
	<SELECT name="descripcion">
		<OPTION VALUE="Scrum Team">Scrum Team</OPTION>
		<OPTION VALUE="Scrum Master">Scrum Master</OPTION>
		<OPTION VALUE="Product Owner">Product Owner</OPTION>
		
	</SELECT>
	</TD>
</TR>

   </tr>
     
      <tr>
       <td colspan="2" bgcolor="#ffffff" align="left">
       <input type="hidden" name="action" value="create"/>
       <input type="hidden" name="proyectoID" value="<%=request.getParameter("proyectoID")%>"/>
       <input type="hidden" name="nombreP" value="<%=request.getParameter("nombreP")%>"/>
       <input type="hidden" name="teamID" value="<%=request.getParameter("teamID")%>"/>
       <input type="hidden" name="nombreT" value="<%=request.getParameter("nombreT")%>"/>
       <input type="submit" value="Registrar" >
    
       </td>
      </tr>
   </table>
        <div style="text-align: center;">
 <span>

     <th><a href="/personaservlet?action=show&teamID=<%=teamID%>&nombreT=<%=nombreT%>&proyectoID=<%=request.getParameter("proyectoID")%>&nombreP=<%=request.getParameter("nombreP")%>"> Listar Personas</a><br><br></th>  
 <a href="/teamservlet?action=show&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP")%>"> Listar Team</a>
 <br>
 <br>
   <a href="/index.jsp">Ir al Inicio</a>
   
  </span>
</div>
   </form>
 </body>
</html>




