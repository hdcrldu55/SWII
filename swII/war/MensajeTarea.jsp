
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
    
<script type="text/javascript">
alert("Se Guardó con éxito");

</script>

   <script language="Javascript"> 
       function confirmar(){ 
    confirmar=confirm("¿Desea Craer Otra Tarea?"); 
    if (confirmar) 
    // si pulsamos en aceptar
   document.location.href = "/CrearTareas.jsp";
    else 
    // si pulsamos en cancelar
    alert('No se crearan mas Tareas'); 
    } 
    </script>
    
       <div style="text-align: center;">
    <h1><a href="javascript:confirmar()">Nueva Tarea</a><br></h1>
	<h1><a href="/tareasservlet?action=show"> Listar Tareas</a></h1><br>
    <a href="/index.jsp">Ir al Inicio</a>
</div>>
  </body>

</html>
