<%@page import="com.sw.entidades.persona" %>
<%@page import="java.util.*"%>

<%
List<persona> personas1 = (List<persona>)request.getAttribute("personas1");
%>
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
 <span ><h1>Crear Historia De Usuario</h1></span>
 
  <form action="/historiausuarioservlet" method="get">
  <table border="0">
   <tr>
       <td>Nombre:</td>
       <label class="control-label col-sm-2"></label> 
       <td><input type="text" name="nombrehu" /></td>
  </tr>
   <tr>
       <td>Responsable:</td>
       <td><input type="text" name="responsablehu" /></td>
  </tr>
         <%
 for (int idx = 0; idx < personas1.size(); idx++) {
     persona p = (persona)personas1.get(idx);
%>
 <tr>
 <TD>Responsable: </TD>
  <TD>
	<SELECT name="responsablehu">
		<OPTION VALUE="<%= p.getNombrePersona() %>"></OPTION>
				
	</SELECT>
	</TD>
  
         
    </tr>

<%}%>

  
   <tr>
       <td>Riesgo:</td>
       <td><input type="text" name="riesgohu" /></td>
  </tr>
   <tr>
       <td>Prioridad:</td>
       <td><input type="text" name="prioridadhu" /></td>
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
       <input type="submit" value="Registrar" >
       </td>
      </tr>
   </table>
        <div style="text-align: center;">
 <span>

   <a href="/index.jsp">Ir al Inicio</a>
   
  </span>
</div>
   </form>
 </body>
</html>




