<%-- 
    Document   : menu_principal
    Created on : 23/10/2020, 04:18:59 PM
    Author     : bryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
     
        
        
        <title>JSP Page</title>
        
        
     <link rel="stylesheet" type="text/css" href="../diceno/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="../diceno/css/menu_principal.css">
     <link href="../diceno/css/navbar.css" rel="stylesheet">
 
        <script src="../diceno/js/jquery-3.5.1.min.js"></script>
  <script src="../diceno/js/popper.min.js"></script>
 <script src="../diceno/js/bootstrap.min.js"></script>
 <%-- menu desplegable--%>
 <link rel="stylesheet" href="../diceno/css/barra_css/styles.css">
 <link rel="stylesheet" href="../diceno/css/barra_css/font-awesome.min.css">
 
 <script src="../diceno/js/jquery-3.5.1.slim.min.js"></script>
 <script src="../diceno/js/bootstrap.bundle.min.js"></script>
 <%--  categoria--%>
 
 <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick.css">
  <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick-theme.css">
  
 
  <script src="../diceno/js/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="../diceno/css/slick/slick.js" type="text/javascript" charset="utf-8"></script>
   
  
  <script type="text/javascript">
    $(document).on('ready', function() {
     
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 5,
        slidesToScroll: 5
      });


      $(".docemejore").slick({
       dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
    
      
    });
</script>
  
  <%--categorias fin--%>
    </head>
    
    
    
       <%-- paginaaaa--%>
    
    
    <body>
       

<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">


    <a class="navbar-brand" href="https://www.jose-aguilar.com/">
        <img src="https://www.jose-aguilar.com/blog/wp-content/themes/jaconsulting/images/jose-aguilar.png" width="30" height="30" alt="Jose Aguilar">
      </a>
      
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>









    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="index.html">Demo <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="https://www.jose-aguilar.com/scripts/css/position-fixed/position-fixed.zip">Descargar</a>
            <a class="nav-item nav-link" href="https://www.jose-aguilar.com/blog/position-fixed/">Tutorial</a>
            <a class="nav-item nav-link" href="https://www.jose-aguilar.com/">&copy; Jose Aguilar</a>
        </div>
    </div>
</nav>


        
        
        
   <%-- boton desplegable--%>
  
   <div class="container-fluid">
       <div class="row">  
       
           <div class="col">
  <button class="navbar-toggler boton_desplegable" type="button" data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
    ///
  </button>
   </div>
           
           
           <div class=" logo col-1" >   
     <img src="../imagenes/logo.png" width="110px" height="29px" alt="logo"/>
      </div>
           
           <div class="col-8" <%--  style="background: #138496;"--%> >   
               <center>
<form>
    <input type="text" name="" value="" size="60px" />
 <input type="submit" value="buscar" name="buscar" class="btn btn-primary"/>
     </form>
               </center>
            </div>
           
           <div class="col-2" >
      <%
          /*buscar bariables globales o nos ira mal XD */
          
          String usuario = "nn";
         // usuario="jhonny";
          
      if(usuario.equals("nn")){
          %>
          <a href="">REGÍSTRARCE</a>/<a href="">INICIAR SESIÓN</a>
          
     
     <%
      }else{
        %>
          hola crak
     <%}%>
</div>  



      </div>
    </div>
  <%-- contenido del boton--%>
  <div class="collapse navbar-collapse" id="navbarsExample01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
     
    </ul>
  </div>
 
    


       <%-- carrucel--%>   
  <div class="container"> 
    <div class="row">
        
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="../imagenes/carrucel/carrusel_4.jpg" class="d-block w-100" alt="..."  width="200" height="450">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
      </div>
    </div>
    <div class="carousel-item">
        <img src="../imagenes/carrucel/carrusel_5.png" class="d-block w-100" alt="..." width="200" height="450">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>
    <div class="carousel-item">
        <img src="../imagenes/carrucel/carrusel_3.jpg" class="d-block w-100" alt="..." width="200" height="450">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        
        
    <br>
     </div>
      <div class="row">
      <h2>categoria </h2>
      </div>
      <br>
</div>
  

   
 

 <div>
  <section class="regular slider">
    <div>
      <img src="http://placehold.it/350x300?text=1">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=2">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=3">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=4">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=5">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=6">
    </div>
  </section>
</div>  

  
       
        
  <div class="container">
  <div class="row">
  <h2 class="3">Top 12 mejores productos</h2>
  </div> 
      </div>
  
  
  <br>
  <!--carrucel 12mejores inicio-->

  
  
  
  <section class="docemejore slider">
    <div>
        
        <div class="card" style="width: 18rem;">
  <img src="http://placehold.it/350x300?text=1" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        
    </div>
    <div>
    
        <div class="card" style="width: 18rem;">
  <img src="http://placehold.it/350x300?text=2" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        
    </div>
    <div>
      
        <div class="card" style="width: 18rem;">
  <img src="http://placehold.it/350x300?text=3" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        
    </div>
    <div>
     
        <div class="card" style="width: 18rem;">
  <img src="http://placehold.it/350x300?text=4" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        
    </div>
    <div>
      
        <div class="card" style="width: 18rem;">
  <img src="http://placehold.it/350x300?text=5" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        
    </div>
    <div>
      
        <div class="card" style="width: 18rem;">
  <img src="http://placehold.it/350x300?text=6" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        
    </div>
    <div>
      
        <div class="card" style="width: 18rem;">
  <img src="http://placehold.it/350x300?text=7" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        
    </div>
    <div>
      
        <div class="card" style="width: 18rem;">
  <img src="http://placehold.it/350x300?text=8" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        
    </div>
    <div>
     
        <div class="card" style="width: 18rem;">
  <img src="http://placehold.it/350x300?text=9" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        
    </div>
  </section>
  
  
  
  
  
  
<!--fin div 10 mejores-->





         <div class="container">
  <div class="row">
  <h2 class="3">ultimos añadidos </h2>
  </div> 
             
      <div class="row">
            <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
                   <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
      </div>   
             
             
             
        <div class="row">
            <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
                   <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
      </div>        
             
             
             
             
          <div class="row">
            <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
                   <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
      </div>        
             
             
             
             
             
             
             
              <div class="row">
            <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
                   <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
      </div>        
             
             
             
             
             
              <div class="row">
            <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
                   <div class="col-6">    
          <div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="http://placehold.it/350x300?text=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </div> 
          
      </div>        
             
             
             
             
          
      </div>        
             
             
      </div>
        
        
        
        
    
  
  
  
  
  
  
    </body>
</html>
