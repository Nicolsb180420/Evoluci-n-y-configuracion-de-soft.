<%-- 
    Document   : ver_producto
    Created on : 28/11/2020, 10:54:16 AM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_producto"%>
<%@page import="datos.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" type="text/css" href="../diceno/css/bootstrap.min.css">


        <link rel="stylesheet" type="text/css" href="../diceno/css/menu_principal.css">

        <%-- despegable movivble y adaptable--%>


        <%-- problemas :C borra esto amigo o no ? 
       <link rel="stylesheet" href="../diceno/css/css_des/app.css"/> 
        --%>


        <link href="../diceno/css/navbar.css" rel="stylesheet">

        <script src="../diceno/js/jquery-3.5.1.min.js"></script>
        <script src="../diceno/js/popper.min.js"></script>
        <script src="../diceno/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../diceno/css/css_des/pure-drawer.css"/>

        <script src="../diceno/js/jquery-3.5.1.slim.min.js"></script>
        <script src="../diceno/js/bootstrap.bundle.min.js"></script>
        <%--  categoria--%>

        <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick.css">
        <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick-theme.css">


        <script src="../diceno/js/jquery-2.2.0.min.js" type="text/javascript"></script>
        <script src="../diceno/css/slick/slick.js" type="text/javascript" charset="utf-8"></script>
        <link href="../diceno/css/navbar-top-fixed.css" rel="stylesheet">     

        <%--caja de texto--%>

        <link rel="stylesheet" href="../diceno/css/caja_text.css">
        <link rel="stylesheet" href="../diceno/css/categorias.css">

        <link rel="stylesheet" href="../diceno/css/ProductoMostrar.css">

    </head>
    <body>
        <div class="container-fluid">
            <%
                String cliente_id;
                HttpSession sesion_trabajadro = request.getSession();
                cliente_id = sesion_trabajadro.getAttribute("trabajador_id").toString();
                String puesto = sesion_trabajadro.getAttribute("trabajador_puesto").toString();

            %>


            <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
            <div class="row">
                <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color:#FFAA2E  ">

                    <div class="col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2" style="left:40px">

                        <div class="pure-container" data-effect="pure-effect-push">


                            <input type="checkbox" id="pure-toggle-left" class="pure-toggle" data-toggle="left"/>

                            <label class="pure-toggle-label" for="pure-toggle-left" data-toggle-label="left" style="width: 50px; height:  50px;"  > <span class="pure-toggle-icon" ></span> </label>

                            <div >
                                <a href="../menu_principal/menu_principal_trabajador.jsp"><img src="../imagenes/logo.png" width="100" height="60" /> </a>  

                            </div>

                            <nav class="pure-drawer" data-position="left" style="background:  #F38500;">

                                <br>
                                <br>
                                <br>


                                <div class="nav-primary">


                                </div> 
                            </nav>

                            <label class="pure-overlay" for="pure-toggle-left" data-overlay="left"></label> 
                        </div>  


                    </div>

                    <div class="col-12 col-sm-4 col-md-3 col-lg-2 col-xl-1">


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


    <br>
    <div class="container">

        <%
            int capsula = Integer.parseInt(request.getParameter("id"));

            producto p = new producto();
            logica.logica_producto con = new logica_producto();

            con.consultarProducto(capsula);
            for (int i = 0; i < logica_producto.logica_producto.size(); i++) {
                p = (producto) logica_producto.logica_producto.get(i);
            }
        %>      

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <div id="contenedor1">
                     <img src="<% out.print("../imagenes/productos/" + p.getProducto_imagen().substring(47, p.getProducto_imagen().length()));
                         /*  out.print("../imagenes/productos/" + p.getProducto_imagen().substring(98, p.getProducto_imagen().length()));*/%>" width="auto" height="450" />
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <br><br>
                <div id="contenedor2">
                    <img src="../imagenes/logo.png" width="70" height="45" alt="kazvel" id="kazvel"/>
                    <h1 id="titulo"><%=p.getProducto_nombre()%></h1>
                    <p id="precio">S/. <%=p.getProducto_precio()%></p>
                    <p id="descripcion"><%=p.getProducto_descripcion()%></p>
                    <p id="extra"> <strong><%=p.getProducto_caracteristica()%> </strong></p>
                    <p id="extra"> <strong>Peso: </strong> <%=p.getProducto_peso()%> <%=p.getProducto_tipo_peso()%></p>
                    <hr>
                    <p id="descripcion">Categoria: <%=p.getCategoria_nombre()%></p>
                </div>
            </div>
        </div>
    </div>


                <br>
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
                    <a href="../Nosotros/Preguntas.jsp" style="color: #000">PREGUNTAS FRECUENTES</a> 

                    <br>
                    <a href="../Nosotros/Politica.jsp"style="color: #000" > POLITICA PRIVACIDA  </a>   
                    <br>

                    <a href="../Nosotros/contacto.jsp"style="color: #000">CONTACTANOS</a> 

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
</body>                    
</html>                    