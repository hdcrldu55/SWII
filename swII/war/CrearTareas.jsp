
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
 <span ><h1>Crear Tarea</h1></span>
 
  <form action="/tareasservlet" method="get">
  <table border="0">
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




