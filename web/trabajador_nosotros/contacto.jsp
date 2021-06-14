
<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page import="logica.logica_carrito"%>
<%@page import="datos.carrito"%>
<%
    String correo = request.getParameter("correo");
    String contra = request.getParameter("contra");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Nosotros</title>
        <link rel="icon" type="image/png" href="../imagenes/logo.png " />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="../diceno/css/bootstrap.min.css">


        <link rel="stylesheet" type="text/css" href="../diceno/css/menu_principal.css">

      

        <link href="../diceno/css/navbar.css" rel="stylesheet">

        <script src="../diceno/js/jquery-3.5.1.min.js"></script>
        <script src="../diceno/js/popper.min.js"></script>
        <script src="../diceno/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../diceno/css/css_des/pure-drawer.css"/>

        <script src="../diceno/js/jquery-3.5.1.slim.min.js"></script>
        <script src="../diceno/js/bootstrap.bundle.min.js"></script>
        <%--  categoria--%>

     

        <script src="../diceno/js/jquery-2.2.0.min.js" type="text/javascript"></script>
     
        <link href="../diceno/css/navbar-top-fixed.css" rel="stylesheet">     

        <%--caja de texto--%>

        <link rel="stylesheet" href="../diceno/css/caja_text.css">
        <link rel="stylesheet" href="../diceno/css/estilos.css">

        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    </head>

    <%--menu despegable--%>   



    <body>
          <div class="container-fluid">
            <%
                String cliente_id;
                HttpSession sesion_trabajadro = request.getSession();
                cliente_id = sesion_trabajadro.getAttribute("trabajador_id").toString();
                String puesto = sesion_trabajadro.getAttribute("trabajador_puesto").toString();

                //out.print(cliente_id);
                categoria temp1 = new categoria();
                logica.logica_categoria con1 = new logica_categoria();
            %>


            <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
            <div class="row">
                <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color:#FFAA2E  ">

                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1" >

                        <div class="pure-container" data-effect="pure-effect-push">


                            
                                <a href="../menu_principal/menu_principal_trabajador.jsp"><img src="../imagenes/logo.png" width="100" height="60" /> </a>  

                            
                        </div>  


                    </div>

                    <div class="col-11 col-sm-11 col-md-11 col-lg-11 col-xl-11">


                        <div class="btn-group   float-right align-self-end"  >

                            <% if (cliente_id.equals("NN")) {%>
                            <!---------------------------------------------------------------------------------------------------------------------------------->                  
                            <div class="btn-group ">

                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: #CE6100   ">
                                    Registrarse o iniciar sesion 
                                </button>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left">


                                    <form action="../login/login_controlador.jsp" class="px-4 py-3">

                                        <div class="form-group">
                                            <label for="exampleDropdownFormEmail1">Correo :</label>
                                            <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="Correo@ejemplo.com" name="correo" >
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleDropdownFormPassword1">Contraseña :</label>
                                            <input type="contra" class="form-control" id="exampleDropdownFormPassword1" placeholder="Contraseña" name="contra">
                                        </div>
                                        <div class="form-group">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="dropdownCheck">
                                                <label class="form-check-label" for="dropdownCheck">
                                                    recordar
                                                </label>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Ingresar</button>

                                    </form>





                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Registrarse</a>
                                    <a class="dropdown-item" href="#">¿Olvidaste tu contraseña?</a>

                                </div>



                            </div>

                            <%} else {

                            %>

                            <div class="btn-group ">

                                <center>




                                    <div class="btn-group">
                                        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: #CE6100   ">
                                            <%  out.print(sesion_trabajadro.getAttribute("trabajador_nombre").toString() + " " + sesion_trabajadro.getAttribute("trabajador_apellido").toString());  %>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">

                                            <!--
                                            <button class="dropdown-item" type="button">Mis compras</button>
                                            
                                            <a href="../lista_deseos/lista_deseos.jsp" class="dropdown-item">Lista de deseos</a>
                                            <a href="../carrito/carrito.jsp" class="dropdown-item">Carrito de compras</a>
                                            -->
                                            <a href="../login/login_cerrar.jsp" class="dropdown-item" type="button">Cerrar sesion</a>


                                        </div>
                                    </div>
                                </center>

                            </div>


                            <%}%>




                            <!---------------------------------------------------------------------------------------------------------------------------------->
                        </div>





                    </div>

                </nav>


            </div>


        </div>




            <br><br><br>
            <div class="container">
                <div class="row">

                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <p class="h4 text-danger">QUIMICA KAZVEL</p>
                        <hr>
                        Somos una empresa peruana con más de 10 años en el mercado. Nos dedicamos a la compra y venta de una gran variedad de productos para la limpieza profesional.
                        <br><br>
                        Dedicamos nuestro esfuerzo, imaginación y vocación para desarrollar productos y accesorios que satisfagan tus necesidades. 
                        <br><br>
                        Kazvel presenta su linea de productos de limpieza del hogar, empresas y oficinas, productos de alta calidad y amigable con el medio ambiente.

                        <p class="h5 text-danger">Visión:</p>
                        - Fomentar el desarrollo de sus colaboradores. <br>
                        - Consolidar la confianza de sus clientes. <br>
                        - Velar por la preservación del medio ambiente. <br>

                        <p class="h5 text-danger">Misión:</p>
                        Ofrecer a nuestros clientes un alto estándar de calidad en la fabricación y distribución de productos para limpieza profesional, respaldado por su personal calificado, utilizando tecnología de avanzada y garantizado por certificaciones internacionales.
                    </div>
                    <div class="col-6">
                        <img src="https://kazvel.com/wp-content/uploads/2019/09/nosotros-1.jpg" width="500" height="500"/>
                    </div>
                </div>
            </div>           

            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <p class="h5 text-danger">Comunicate con nosotros:</p>   
                        Correo: Ventas@kazvel.com <br>
                        Telefono: 536-4941 <br>
                        Ventas: 928315913 <br>
                    </div>
                    <div class="col-6">
                        <p class="h5 text-danger">Nuestra ubicación:</p>   
                        En Lima <br>
                        Mza H Lote 01 urb. Pro <br>
                        Industrial <br>
                        S.M.P Lima-Peru <br>
                    </div>
                </div>
            </div>

            <br><br>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div style="width: 100%;"><iframe src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=es&amp;q=-11.927667,-77.072284+(Mi%20nombre%20de%20egocios)&amp;t=&amp;z=17&amp;ie=UTF8&amp;iwloc=B&amp;output=embed" width="100%" height="300" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe></div>
                    </div>
                </div>
            </div>

            <br><br><br>
          

    <footer>
            <div class="container-fluid pagina">





                <div class="row" >

                    <div class="col-6 col-sm-12 col-md-12 col-lg-3 col-xl-3" >


                        <br>
                        <br>
                        <center>
                            <img src="../imagenes/logo_bn.png" width="250px"  height="149px" />


                        </center>
                    </div>

                    <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3">
                        <br>
                        <center>
                            <p class="h5">“Un hogar impecable es nuestra misión"</p>
                            <br>
                            <img src="../imagenes/ubicacion.png" width="25" height="25" alt="ubicacion"/>


                            Mza H Lote 01 urb. Pro Industrial S.M.P Lima-Perú
                            <br>
                            <img src="../imagenes/telefono.png" width="35" height="30" alt="telefono"/>

                            Teléfono:  536-4941
                            <br>
                            <img src="../imagenes/celular.png" width="18" height="18" alt="celular"/>
                            Ventas: 928315913
                            <br>
                            <img src="../imagenes/correo.png" width="25" height="25" alt="correo"/>

                            Correo: Ventas@kazvel.com
                            <br>
                        </center>

                        <br>
                    </div>





                    <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3">
                        <br>


                        <center>

                            <p class="h3"> CONOCENOS :  </p>
                            <!--
                                                NOSOTROS
                                                <br>
                            -->        
                            <a href="Preguntas.jsp" style="color: #000">PREGUNTAS FRECUENTES</a> 

                            <br>
                            <a href="Politica.jsp"style="color: #000" > POLITICA PRIVACIDAD  </a>   
                            <br>

                            <a href="contacto.jsp"style="color: #000">CONTACTANOS</a> 

                            <br>


                        </center>
                        <br>

                    </div> 



                    <div class="col-3 col-sm-4 col-md-4 col-lg-3 col-xl-3" >
                        <br>

                        <center>
                            <p class="h3"> SIGUENOS EN :  </p>   
                            <br>
                            <a href=""><img src="../imagenes/facebook.png" height="40px" width="40px"  /></a> 
                            <br>

                            <a href=""><img src="../imagenes/twitter.png"  height="40px" width="40px" /></a> 
                            <br>

                            <a href="https://instagram.com/qkazvel?igshid=nc1l54gp8lh5"><img src="../imagenes/instagram.png" height="40px" width="40px"  /></a> 
                        </center>

                    </div>



                </div>







            </div>
        </footer>



    </body>
</html>