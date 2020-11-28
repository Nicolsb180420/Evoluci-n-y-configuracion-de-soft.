<%-- 
    Document   : menu_principal_segundo
    Created on : 26/10/2020, 07:11:33 PM
    Author     : bryan
--%>
<%@page import="logica.logica_carrito"%>
<%@page import="datos.carrito"%>
<%@page import="logica.logica_comentario"%>
<%@page import="datos.comentario"%>
<%@page import="datos.lista_deseos"%>
<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page import="logica.logica_producto"%>
<%@page import="datos.producto"%>
<%
    String correo = request.getParameter("correo");
    String contra = request.getParameter("contra");
%>

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

    </head>

    <%--menu despegable--%>   



    <body>


        <div class="container-fluid">
            <%
                String cliente_id;
                HttpSession sesion = request.getSession();
                cliente_id = sesion.getAttribute("cliente_id").toString();

                //out.print(cliente_id);
                categoria temp1 = new categoria();
                logica.logica_categoria con1 = new logica_categoria();
            %>


            <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
            <div class="row">
                <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color:#FFAA2E  ">

                    <div class="col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2" style="left:40px">

                        <div class="pure-container" data-effect="pure-effect-push">


                            <input type="checkbox" id="pure-toggle-left" class="pure-toggle" data-toggle="left"/>

                            <label class="pure-toggle-label" for="pure-toggle-left" data-toggle-label="left" style="width: 50px; height:  50px;"  > <span class="pure-toggle-icon" ></span> </label>

                            <div >
                                <a href="../menu_principal/login.jsp"><img src="../imagenes/logo.png" width="100" height="60" /> </a>   

                            </div>

                            <nav class="pure-drawer" data-position="left" style="background:  #F38500;">

                                <br>
                                <br>
                                <br>


                                <div class="nav-primary">
                                    <%
                                        con1.consultarDep();
                                    %>
                                    <%
                                        for (int i = 0; i < logica_categoria.logica_categoria.size(); i++) {
                                            temp1 = (categoria) logica_categoria.logica_categoria.get(i);

                                    %>
                                    <center>
                                        <div class="btn-group" style="width:100%;">
                                            <a href="../busquedas/categorias.jsp?id=<%=temp1.getCategoria_id()%>" class="btn btn-outline-danger" style=" color: #ffffff"> 
                                                <%=temp1.getCategoria_nombre()%>
                                            </a>



                                        </div>
                                    </center>
                                    <%}%>



                                    <center>
                                        <div class="btn-group" style="width:100%;   ">
                                            <button type="button" class="btn btn-danger dropdown-toggle" style="background: #CE6100; color: #ffffff" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Conócenos
                                            </button>
                                            <div class="dropdown-menu" style="width:100%;">


                                                <a class="dropdown-item" href="../Nosotros/Preguntas.jsp">Preguntas Frecuentes</a>
                                                <a class="dropdown-item" href="../Nosotros/Politica.jsp">Politica de privacidad </a>

                                                <a class="dropdown-item" href="../Nosotros/contacto.jsp">Contactanos</a>
                                            </div>
                                        </div>
                                    </center>

                                </div> 
                            </nav>

                            <label class="pure-overlay" for="pure-toggle-left" data-overlay="left"></label> 
                        </div>  


                    </div>



                    <div class="col-8 col-sm-6 col-md-7 col-lg-8 col-xl-9" style="left:14px" >
                        <form action="../busquedas/dato.jsp">

                            <input type="text" name="busqueda"  class="search-for-champion" >

                            <button  class="search-btn" type="submit" style="background: #CE6100   " > <img src="../imagenes/buscar.png" width="45" height="45" alt="buscar"/>
                            </button>
                        </form>


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

                                carrito temp_car = new carrito();
                                logica_carrito con_car = new logica_carrito();

                                con_car.validar_exixtencia(cliente_id);
                            %>

                            <img src="../imagenes/carrito.png" width="50" height="50" alt="carrito"/>
                            <label class="h3" ><%out.print("(" + logica_carrito.logica_carrito.size() + ")");%></label>
                            <div class="btn-group ">

                                <center>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: #CE6100   ">
                                            <%  out.print(sesion.getAttribute("cliente_nombre").toString() + " " + sesion.getAttribute("cliente_apellido").toString());  %>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="../lista_pedidos/lista_solicitud.jsp" class="dropdown-item">Mis compras</a> 
                                            <a href="../lista_deseos/lista_deseos.jsp" class="dropdown-item">Lista de deseos</a>
                                            <a href="../carrito/carrito.jsp" class="dropdown-item">Carrito de compras</a>

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
        <br>
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
                             /*  out.print("../imagenes/productos/" + p.getProducto_imagen().substring(98, p.getProducto_imagen().length()));*/%>" width="450" height="600" alt="DETERGENTE" id="imagen"/>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div id="contenedor2">
                        <img src="../imagenes/logo.png" width="70" height="45" alt="kazvel" id="kazvel"/>
                        <h1 id="titulo"><%=p.getProducto_nombre()%></h1>
                        <p id="precio">S/. <%=p.getProducto_precio()%></p>
                        <p id="descripcion"><%=p.getProducto_descripcion()%></p>
                        <p id="extra"> <strong><%=p.getProducto_caracteristica()%> </strong></p>
                        <hr>
                        <p id="descripcion">Categoria: <%=p.getCategoria_nombre()%></p>

                        <%  if (cliente_id.equals("NN")) {
                        %>

                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            Agregar a lista de deseos
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">LOGIN</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="../login/login_controlador.jsp" >
                                        <div class="modal-body">

                                            <div class="form-group">
                                                <label for="exampleDropdownFormEmail1">Correo :</label>
                                                <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="Correo@ejemplo.com" name="correo" >
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleDropdownFormPassword1">Contraseña :</label>
                                                <input type="contra" class="form-control" id="exampleDropdownFormPassword1" placeholder="Contraseña" name="contra">
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary">Ingresar</button>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Registrarse</button>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-label="Close">cancelar</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <br>
                        <br>
                        <br>
                        <%
                        } else {

                            lista_deseos lt = new lista_deseos();
                            logica.logica_lista_deseos conlt = new logica.logica_lista_deseos();

                            conlt.lt_boton(cliente_id, p.getProducto_id());

                            for (int j = 0; j < logica.logica_lista_deseos.logica_lista_deseos.size(); j++) {
                                lt = (lista_deseos) logica.logica_lista_deseos.logica_lista_deseos.get(j);

                            }
                            if (lt.getLista_deseos_id() == 0) {

                        %>

                        <div id="listaDeseo" >
                            <form action="controlador_producto.jsp">

                                <input type="text" name="id_producto" hidden value="<%=capsula%>" />
                                <input type="text" name="id_cliente" hidden value="<%=cliente_id%>" />


                                <input hidden="" name="lista_deseos" value="ingresar"  />
                                <button type="submit" class="btn">
                                    <img src="../imagenes/icono_corazon_vacio.png" width="20" height="20" alt="icono_corazon_vacio"/>
                                    Añadir a lista de deseos
                                </button>
                            </form>
                        </div>


                        <%

                        } else {


                        %>
                        <div id="listaDeseo" >
                            <form action="controlador_producto.jsp">
                                <input type="text" name="id_producto" hidden value="<%=capsula%>" />
                                <input type="text" name="id_lista_deseos" hidden value="<%=lt.getLista_deseos_id()%>" />

                                <input hidden="" name="lista_deseos" value="quitar" />
                                <button type="submit" class="btn">
                                    <img src="../imagenes/icono_corazon_añadido.png" width="20" height="20" alt="icono_corazon_añadido"/>
                                    Añadido
                                </button>

                            </form>

                        </div>


                        <%
                            }
                            //out.print(lt.getLista_deseos_id()); 
                        %>



                        <%}%>



                        <br>

                        <%  if (cliente_id.equals("NN")) {
                        %>

                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            Agregar al carrito
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">LOGIN</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="../login/login_controlador.jsp" >
                                        <div class="modal-body">

                                            <div class="form-group">
                                                <label for="exampleDropdownFormEmail1">Correo :</label>
                                                <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="Correo@ejemplo.com" name="correo" >
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleDropdownFormPassword1">Contraseña :</label>
                                                <input type="contra" class="form-control" id="exampleDropdownFormPassword1" placeholder="Contraseña" name="contra">
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary">Ingresar</button>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Registrarse</button>                                       
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-label="Close">cancelar</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <br>
                        <br>
                        <br>
                        <%
                        } else {

                        %>

                        <form action="controlador_carrito.jsp" >


                            <div id="divCant">
                                <input type="text" name="cantidad" value="1" id="cantidad">

                                <input type="text" name="id_producto" hidden  value="<%=capsula%>" />
                                <input type="text" name="id_cliente" hidden value="<%=cliente_id%>" />
                            </div>
                            <br>


                            <div id="botonCarrito">

                                <input type="text"  name="agregar_carrito" hidden value="agregar" >
                                <button type="submit" class="btn btn-outline-primary">Agregar al carrito</button>
                            </div>


                        </form>



                        <%

                                //out.print("holi amigo ");
                            }%>


                    </div>
                </div>
            </div>


            <hr> 

            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> 
                    <p><strong>productos semejantes:</strong> </p>
                    <%

                        con.productos_semejantes(p.getProducto_categoria());
                        for (int j = 0; j < logica_producto.logica_producto.size(); j++) {
                            p = (producto) logica_producto.logica_producto.get(j);

                    %>   


                    <div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-3">

                             <img src="<% out.print("../imagenes/productos/" + p.getProducto_imagen().substring(38, p.getProducto_imagen().length()));
                             /*   out.print("../imagenes/productos/" + p.getProducto_imagen().substring(81, p.getProducto_imagen().length()));*/%>" width="auto" height="150"  class="card-body-top" />




                        <div class="card-body">

                            <h5 class="card-title"><%=p.getProducto_nombre()%></h5>
                            <p class="card-text"><%=p.getProducto_descripcion()%></p>
                            <a href="producto.jsp?id=<%=p.getProducto_id()%>" class="btn btn-danger">mas informacion</a>
                        </div>
                    </div>
                    <%}%>      


                </div>





                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">     


                    <% if (cliente_id.equals("NN")) {%> 


                    <%} else {

                    %>
                    <form action="controlador_comentario.jsp" >
                        <p><strong>Comentario: </strong></p>

                        <textarea name="comentario" cols="45" rows="8"></textarea>
                        <br>
                        <input type="text" name="id_producto" hidden value="<%=capsula%>" />
                        <input type="text" name="id_cliente" hidden value="<%=cliente_id%>" />
                        <input type="text"  name="agregar_comentario" hidden value="agregar" >
                        <button type="submit" class="btn btn-outline-dark">Enviar</button>


                    </form>  
                    <%

                        }

                    %> 

                </div>
            </div>

            <hr>

            <div class="row">


                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <p><strong>Comentarios: </strong></p>

                    <%  comentario comen = new comentario();
                        logica.logica_comentario coment = new logica_comentario();
                        coment._mostrar_comentarios(capsula);

                        for (int j = 0; j < logica_comentario.logica_comentario.size(); j++) {
                            comen = (comentario) logica_comentario.logica_comentario.get(j);

                    %>
                    <div class="card">
                        <div class="card-header  ">




                            <%      //    out.print(cliente_id+" / ");
                                //    out.print(comen.getComentario_cliente());
                                String id_comentario_cliente = Integer.toString(comen.getComentario_cliente());

                                if (cliente_id.equals(id_comentario_cliente)) {
                                    out.print(comen.getCliente_nombre());
                            %>

                            <form action="controlador_comentario.jsp" >    
                                <input type="text" name="id_comentario" hidden value="<%=comen.getComentario_id()%>" />
                                <input type="text" name="id_producto" hidden value="<%=capsula%>" />
                                <input type="text"  name="agregar_comentario" hidden value="borrar" >

                                <button type="submit" class="btn btn-outline-dark">borrar</button>

                            </form>  


                            <%
                                } else {
                                    out.print(comen.getCliente_nombre());
                                }
                            %>


                        </div>
                        <div class="card-body">
                            <blockquote class="blockquote mb-0">
                                <p><%=comen.getComentario_descripcion()%></p>

                                <cite title="Source Title"><%=comen.getComentario_fecha()%></cite>

                            </blockquote>
                        </div>
                    </div>
                    <br>
                    <%}
                    %>










                </div>



            </div>

            <hr>
        </div>       







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
