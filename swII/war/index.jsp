

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>SrumP</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 60%;
      margin: auto;
  }
  </style>
</head>
<body>
<body background="http://www.pidcodecolombia.com/wp-content/uploads/constructor/themes/current/fondo%20gris%20degrade.jpg">
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
       <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
         <body>
        <div style="text-align: rigth;">
            <img src="img/xrump.png" alt="Chania" width="250" height="120"> </div>
          <div style="text-align: center;">
           <h1>Gestión de Proyectos</h1> 
         <img src="http://www.hobest.es/copy_of_gestion.jpg/image_preview" alt="Chania" width="460" height="345">
       <h1>.........................................................................</h1>
       <!-- Desplegando -->
        <a href="/crearProyecto.jsp">Crear Proyecto</a><br>
        <a href="/proyectoservlet?action=show"> Listar Proyecto</a>
            
        </div>                  
    	</body>
        
      </div>

      <div class="item">
          <body>
           <div style="text-align: rigth;">
            <img src="img/xrump.png" alt="Chania" width="250" height="120"> </div>
        <div style="text-align: center;">
    
        <h1>Gestión de Team</h1> 
         <img src="http://www.mypatrimony.com/blog/wp-content/uploads/2012/06/iconos-usuarios.jpg" alt="Chania" width="460" height="345">
       <h1>.........................................................................</h1>
       
      
        <a href="/teamservlet?action=show"> Listar Team</a><br>
       
        <!--< a href="/eliminarPersona"> Eliminar Personas</a>-->       
        </div>                  
    	</body>
      </div>
    
         <div class="item" >
      
      <div style="text-align: rigth;">
            <img src="img/xrump.png" alt="Chania" width="350" height="120"> </div>
            <div style="text-align: center;">
         <h1>Gestión de Sprint</h1> </div>
         <img src="http://casari-asoc.com/blog/wp-content/uploads/2012/05/task-board-no-toploading.png" alt="Chania" width="460" height="345">
        <div style="text-align: center;">
           <h1>.........................................................................</h1>
       <!-- Desplegando -->
       
        <a href="crearSprint.jsp">Crear Sprint </a><br>
         <a href="/sprintservlet?action=show"> Listar Sprint</a></div>
         <a href=""> product back log</a><br>
         <a href=""> sprint backlog</a>
      </div>
      
      
           <div class="item" >
      
      <div style="text-align: rigth;">
            <img src="img/xrump.png" alt="Chania" width="350" height="120"> </div>
            <div style="text-align: center;">
         <h1></h1> </div>
         <img src="http://elapartamento.org/wp-content/uploads/2015/01/proximamente2.png" alt="Chania" width="460" height="345">
        <div style="text-align: center;">
           <h1>.........................................................................</h1>
       <!-- Desplegando -->
       
        
         <a href=""> Product Backlog</a><br>
         <a href=""> Sprint Backlog</a></div>
      </div>
    
    
      <div class="item" >
      
      <div style="text-align: rigth;">
            <img src="img/xrump.png" alt="Chania" width="350" height="120"> </div>
        <img src=http://www.codejobs.biz/www/lib/files/images/0d4969c2d87cb3c.png alt="Flower" width="460" height="345">
        <div style="text-align: center;">
           <h1>.........................................................................</h1>
       <!-- Desplegando -->
       
        <a href="https://www.scrum.org/">Sitio Oficial Scrum</a><br></div>
      </div>

      <div class="item">
       <div style="text-align: rigth;">
            <img src="img/xrump.png" alt="Chania" width="350" height="120"> </div>
      <img src="http://us.123rf.com/450wm/radiantskies/radiantskies1211/radiantskies121100060/16084055-abstract-word-cloud-for-extreme-programming-with-related-tags-and-terms.jpg" alt="Flower" width="460" height="345">
      <div style="text-align: center;">    
         <h1>.........................................................................</h1>
       <!-- Desplegando -->
        <a href="http://www.extremeprogramming.org/">Sitio Oficial XP</a><br></div>
      </div>
 
</div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>

