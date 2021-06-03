

<%@page import="logica.logica_pedido"%>
<%@page import="datos.pedido"%>
<%@page import="logica.logica_lista_pedido"%>
<%@page import="datos.lista_pedido"%>
<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page import="logica.logica_carrito"%>
<%@page import="datos.carrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ver pedido</title>
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
       

        <script src="../diceno/js/jquery-2.2.0.min.js" type="text/javascript"></script>
       
        <link href="../diceno/css/navbar-top-fixed.css" rel="stylesheet">     

       
        <link rel="stylesheet" href="../diceno/css/estilos.css">

        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    </head>
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
                                    <br>
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
                                            <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Contraseña" name="contra">
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
                                    <a class="dropdown-item" href="../cliente/Registrar usuario.jsp">Registrarse</a>
                                    <a class="dropdown-item" href="#">¿Olvidaste tu contraseña?</a>

                                </div>



                            </div>

                            <%} else {
                                carrito temp_car = new carrito();
                                logica_carrito con_car = new logica_carrito();

                                con_car.validar_exixtencia(cliente_id);
                            %>

                            <a href="../carrito/carrito.jsp">
                                <img src="../imagenes/carrito.png" width="50" height="50" alt="carrito"/>
                            </a>
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

        <br><br>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <p class="h3" style="color: #CE6100"> <strong>Pedido</strong></p> <br>
                    </center>
                </div>
            </div>
        </div>                       
        <%
            pedido temp = new pedido();
            logica_pedido con2 = new logica_pedido();
            
            lista_pedido temp_listap = new lista_pedido();
            logica_lista_pedido con = new logica_lista_pedido();
            int id_temp = Integer.parseInt(request.getParameter("id"));

            con.ver_lista_pedido(id_temp);
            con2.ver_datos_cliente(id_temp);
        %>  

        <form action="lista_solicitud.jsp">

            <div class="container">
                <div class="row">
                     <%
                        for (int i = 0; i < logica_pedido.logica_pedido.size(); i++) {
                            temp = (pedido) logica_pedido.logica_pedido.get(i);

                    %>

                    <div class="col-sm-12 col-lg-6">


                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" >Nombre</span>
                            </div>
                            <input type="text" class="form-control" value="<%=temp.getCliente_nombre()%>" disabled="">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Apellido</span>
                            </div>
                            <input type="text" class="form-control"  value="<%=temp.getCliente_apellido()%>" disabled="">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Telefono</span>
                            </div>
                            <input type="text" class="form-control"  value="<%=temp.getPedido_telefono()%>" disabled="">
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-6">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Distrito</span>
                            </div>
                            <input type="text" class="form-control"  value="<%=temp.getDesdist()%>" disabled="">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Ubicacion</span>
                            </div>
                            <input type="text" class="form-control"  value="<%=temp.getPedido_ubicacion()%>" disabled="">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Fecha</span>
                            </div>
                            <input type="text" class="form-control"  value="<%=temp.getPedido_fecha()%>" disabled="">
                        </div>
                    </div>
                    <%
                        }
                    %>    
                    
                    
                    <div class="col-12">
                        <div class="form-group">

                            <table class="table table-hover">
                                <thead>
                                    <tr class="text-center">

                                        <th>ID</th>
                                        <th>IMAGEN</th>
                                        <th>NOMBRE</th>
                                        <th>PRECIO UNIT.</th>
                                        <th>DESCRIPCION</th>
                                        <th>CATEGORIA</th>
                                        <th>CANTIDAD</th>
                                        <th>TOTAL</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <%  float total = 0;
                                        for (int i = 0; i < logica_lista_pedido.logica_lista_pedido.size(); i++) {
                                            temp_listap = (lista_pedido) logica_lista_pedido.logica_lista_pedido.get(i);

                                    %>

                                    <tr>

                                        <td><%=temp_listap.getProducto_id()%></td>

                                                   <td>  <img src="<% out.print("../imagenes/productos/" + temp_listap.getProducto_imagen().substring(47, temp_listap.getProducto_imagen().length()));
                                                       /*out.print("../imagenes/productos/" + temp_listap.getProducto_imagen().substring(98, temp_listap.getProducto_imagen().length()));*/%>" width="auto" height="100"  class="card-body-top" /></td>

                                        <td><%=temp_listap.getProducto_nombre()%></td>

                                        <td><% out.print("S/." + temp_listap.getProducto_precio());%></td>

                                        <td><%=temp_listap.getProducto_descripcion()%></td>

                                        <td><%=temp_listap.getCategoria_nombre()%></td>

                                        <td><%=temp_listap.getLista_pedido_cantidad()%></td>

                                        <td> 
                                            <%

                                                total = temp_listap.getLista_pedido_cantidad() * temp_listap.getProducto_precio();
                                                out.print("S/. " + String.format("%.2f", total));

                                            %>
                                        </td> 

                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>   

                            <input type="submit" class="btn btn-danger" value="Volver" name="btnVolver" />
                        </div>
                    </div>

                </div>

            </div>
        </form>



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
                        <a href="../Nosotros/Politica.jsp"style="color: #000" > POLITICA PRIVACIDAD  </a>   
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
