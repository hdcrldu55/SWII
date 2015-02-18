<%@page import="com.sw.entidades.proyecto" %>
<%@page import="java.util.*"%>

<%
List<proyecto> proyecto1 = (List<proyecto>)request.getAttribute("proyecto1");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  </head>
<body background="img/fondo.png">
  <body>
  
    <div class="container">
      <h2>Listar Proyecto</h2>
                                                                                            
      <div class="table-responsive">          
      <table class="table">
        <thead>
          <tr>
            <th>Id</th>
    	 <th>Nombre</th>
     	<th>Descripción</th>
    	 <th>Fecha </th>

          </tr>
        </thead>
        <tbody>
          <%
 for (int idx = 0; idx < proyecto1.size(); idx++) {
     proyecto pr = (proyecto)proyecto1.get(idx);
%>
    <tr>
    <td><%= pr.getIdProyecto() %></td>
     <td><%= pr.getNombreProyecto() %></td>
     <td><%= pr.getDescripcionProyecto() %></td>
     <td><%= pr.getFechaProyecto() %></td>   
      <td> <p>
        <a href="#">
          <span class="glyphicon glyphicon-repeat"></span>
        </a>
      </p></td>
       <td><p>
        <a href="proyectoservlet?action=delete&value=<%=pr.getIdProyecto()%>">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
      </p></td>
      <th><a href="/CrearTeam.jsp">Crear Team</a><br></th>
       <th>   <a href="/teamservlet?action=show"> Listar Team</a><br></th>  
      <th><a href="/CrearHistoriasUsuario.jsp">Crear Historia de Usuario</a><br></th>
     <th>   <a href="/historiausuarioservlet?action=show"> Listar Historia de Usuario</a><br></th>  
    </tr>

<%}%>

        </tbody>
      </table>
      </div>
    </div>
   <div style="text-align: center;">
 <span>

   <a href="/index.jsp">Ir al Inicio</a>
  </span>
</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>

</html>
