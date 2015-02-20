<%@page import="java.util.*"%>
<%String historiaU = request.getParameter("historiaUID"); %>

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
  <title>.:: Crear Tareas::. </title>
 </head>
 <span>
  <a href="/index.jsp">Ir al indice</a><br>
 </span>
 <span ><h1>Crear Tarea para: <%= request.getParameter("nombreHU")%></h1></span>
 
  <form action="/tareasservlet" method="get">
  <table border="0">
   <input type="hidden" name="historiaTarea" value="<%= historiaU %>"/>
   <tr>
       <td>Historia de Usuario:</td>
       <label class="control-label col-sm-1"></label> 
       <td><input type="text" name="historiaTarea" value="<%= historiaU %>" disabled="disabled"/></td>
  </tr>
  <tr>
       <td>Nombre:</td>
           <label class="control-label col-sm-2"></label> 
          <td>  <TEXTAREA <input COLS=40 ROWS=5 NAME="nombreTarea"/>>
           </TEXTAREA> 
      </td>
      
  </tr>
   <tr>
       <td>Resultado:</td>
        <label class="control-label col-sm-2"></label> 
          <td>  <TEXTAREA <input COLS=40 ROWS=5 NAME="resultadoTarea"/>>
           </TEXTAREA> 
      </td>
  </tr>
    
      <tr>
       <td colspan="2" bgcolor="#ffffff" align="left">
       <input type="hidden" name="proyectoID" value="<%= request.getParameter("proyectoID") %>"/>
       <input type="hidden" name="nombreP" value="<%= request.getParameter("nombreP") %>"/>
       <input type="hidden" name="nombreHU" value="<%= request.getParameter("nombreHU") %>"/>
       <input type="hidden" name="historiaUID" value="<%= request.getParameter("historiaUID") %>"/>
       <input type="hidden" name="action" value="create"/>
       <input type="submit" value="Registrar" >
       </td>
      </tr>
   </table>
        <div style="text-align: center;">
 <span>
 
 <a href="/tareasservlet?action=show&historiaUID=<%=request.getParameter("historiaUID")%>&nombreHU=<%= request.getParameter("nombreHU") %>&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP") %>"> Listar Tarea</a>
<br>
<br>
 <a href="/historiausuarioservlet?action=show&proyectoID=<%= request.getParameter("proyectoID") %>&nombreP=<%= request.getParameter("nombreP")%>"> Listar Historia de Usuario</a>
<br>
<br>
   <a href="/index.jsp">Ir al Inicio</a>
   
  </span>
</div>
   </form>
 </body>
</html>




