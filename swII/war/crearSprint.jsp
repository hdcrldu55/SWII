

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  
  <title>.:: Crear Sprint::. </title>
 </head>
 <body background="img/fondo.png">
 <span>
  <a href="/index.jsp">Ir al indice</a><br>
 </span>
 <span ><h1>Crear un Sprint</h1></span>
  <form action="/sprintservlet" method="get">
  
   <link href="calendario_dw/calendario_dw-estilos.css" type="text/css" rel="STYLESHEET">
   <style type="text/css">
   body{
      font-family: tahoma, verdana, sans-serif;
   }
   </style>
   <script type="text/javascript" src="calendario_dw/jquery-1.4.4.min.js"></script>
   <script type="text/javascript" src="calendario_dw/calendario_dw.js"></script>
   
   <script type="text/javascript">
   $(document).ready(function(){
      $(".campofecha").calendarioDW();
   })
   </script>
  
  <table border="0">
       <tr>
       <td>Nombre:</td>
       <label class="control-label col-sm-2"></label>      
       <td><input type="text" name="nombreSprint" /></td>
      </tr>     
      <tr>
       <td>Descripción:</td>
        <label class="control-label col-sm-2"></label> 
          <td>  <TEXTAREA <input COLS=40 ROWS=5 NAME="descripcionSprint"/>>
           </TEXTAREA> 
      </td>
    
      </tr>
      <tr>
       <td>Fecha Inicio:</td>
       <td><input type="text" name="fechaInicioSprint" class="campofecha" size="12"></td>
      </tr>   
       <tr>
       <td>Fecha Fin:</td>
       <td><input type="text" name="fechaFinSprint" class="campofecha" size="12"></td>
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


