<%@page import="java.util.*"%>
<%String proyecto = request.getParameter("proyectoID"); 
String nombre = request.getParameter("nombreP");%>

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
  <title>.:: Crear Historia De Usuario::. </title>
 </head>
 <span>
  <a href="/index.jsp">Ir al indice</a><br>
 </span>
 <span><h1>Crear Historia de Usuario para: <%=nombre%></h1></span>
 
  <form action="/historiausuarioservlet" method="get">
  <table border="0">
   <tr>
       <input type="hidden" name="proyectohu" value="<%= proyecto %>"/>
       <td>Proyecto:</td>
       <label class="control-label col-sm-1"></label> 
       <td><input type="text" name="proyectohu" value="<%= proyecto %>" disabled="disabled"/></td>
  </tr>
   <tr>
       <td>Nombre:</td>
       <td><input type="text" name="nombrehu" /></td>
  </tr>
   <tr>
       <td>Responsable:</td>
       <td><input type="text" name="responsablehu" /></td>
  </tr>
   <tr>
       <td>Riesgo:</td>
	<td>
	<SELECT name="riesgohu">
		<OPTION VALUE="Alto">Alto</OPTION>
		<OPTION VALUE="Medio">Medio</OPTION>
		<OPTION VALUE="Bajo">Bajo</OPTION>
		
	</SELECT>
	</td>
  </tr>
   <tr>
       <td>Prioridad:</td>
       <td>
	<SELECT name="prioridadhu">
		<OPTION VALUE="Alto">Alto</OPTION>
		<OPTION VALUE="Medio">Medio</OPTION>
		<OPTION VALUE="Bajo">Bajo</OPTION>
		
	</SELECT>
	</td>
       </tr>
     <tr>
       <td>Esfuerzo:</td>
       <td><input type="text" name="esfuerzohu" /></td>
       </tr>
       <tr>
       <td>Descripción:</td>
             <label class="control-label col-sm-2"></label> 
     <td>  <TEXTAREA <input COLS=40 ROWS=5 NAME="descripcionhu"/>>
           </TEXTAREA> 
      </td>
       
       </tr>
       <tr>
       <td>Observación:</td>
         <label class="control-label col-sm-2"></label> 
     <td>  <TEXTAREA <input COLS=40 ROWS=5 NAME="observacionhu"/>>
           </TEXTAREA> 
      </td>
      </tr>
      <tr>
       <td colspan="2" bgcolor="#ffffff" align="left">
       <input type="hidden" name="action" value="create"/>
       <input type="hidden" name="proyectoID" value="<%=request.getParameter("proyectoID")%>"/>
       <input type="hidden" name="nombreP" value="<%=request.getParameter("nombreP")%>"/>
       <input type="submit" value="Registrar" >
       </td>
      </tr>
   </table>
        <div style="text-align: center;">
 <span>
 <a href="/historiausuarioservlet?action=show&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP")%>"> Listar Historia de Usuario</a>
<br>
<br> 
<a href="/proyectoservlet?action=show">Ir a Proyectos</a>
<br>
<br>
   <a href="/index.jsp">Ir al Inicio</a>
   
  </span>
</div>
   </form>
 </body>
</html>




