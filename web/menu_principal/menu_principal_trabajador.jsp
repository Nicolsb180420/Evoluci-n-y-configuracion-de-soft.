<%-- 
    Document   : menu_principal_trabajador
    Created on : 18/11/2020, 09:49:45 PM
    Author     : Nicol Samanamud 
--%>


<%@page import="logica.logica_puesto_permisos"%>
<%@page import="datos.puesto_permisos"%>
<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quimica Kazvel</title>
        <link rel="icon" type="image/png" href="../imagenes/logo.png " />

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


        <link rel="stylesheet" href="../diceno/css/categorias.css">

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




                                    <div class="btn-group"  >
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
            <div class="row">
                <div class="col-12">
                    <center>
                        <p class="h3" style="color: #CE6100"> <strong>Portal del empleado</strong></p> <br>
                    </center>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="categories-section">
                <div class="row">
                    <%

                        puesto_permisos temp_pp = new puesto_permisos();
                        logica.logica_puesto_permisos con_pp = new logica_puesto_permisos();

                        con_pp.consultar_permisos_puesto(puesto);
                        //  out.print( puesto+"<br>"); 
                        // out.print( logica_puesto_permisos.logica_puesto_permisos.size()+"<br>"); 

                    %>

                    <%                for (int i = 0; i < logica_puesto_permisos.logica_puesto_permisos.size(); i++) {
                            temp_pp = (puesto_permisos) logica_puesto_permisos.logica_puesto_permisos.get(i);
                            //  out.print(temp_pp.getPuesto_permisos_permisos()+"<br>");

                    %>


                    <% if (temp_pp.getPuesto_permisos_permisos() == 1) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../lista_pedidos_trabajador/reporte_pedidos.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/reporte de pedidos.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Reporte de pedidos</h5></div>
                            </div>
                        </a>
                    </div>
                    <%
                        }
                    %>  

                    <% if (temp_pp.getPuesto_permisos_permisos() == 2) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../lista_pedidos_trabajador/reporte_ventas.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/reporte de ventas.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Reporte de ventas</h5></div>
                            </div>
                        </a>
                    </div>

                    <%
                        }
                    %> 

                    <% if (temp_pp.getPuesto_permisos_permisos() == 3) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../trabajador/crud_trabajador.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/lista trabajador.png" width="150" height="85" alt="ambientador"/></div> 
                                <div><h5>Crud trabajador</h5></div>
                            </div>
                        </a>
                    </div>
                    <%
                        }
                    %> 

                    <% if (temp_pp.getPuesto_permisos_permisos() == 4) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../trabajador/registrar_trabajador.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/trabajador.png" width="85" height="85" alt="desinfectante"/></div> 
                                <div><h5>Registrar trabajador</h5></div>
                            </div>
                        </a>
                    </div>

                    <%
                        }
                    %> 

                    <% if (temp_pp.getPuesto_permisos_permisos() == 5) {
                    %>

                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../stock/lista_stock_1.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/stock.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Actualizar stock</h5></div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../stock/reporte_stock_actual.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/reporte de pedidos.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Reporte stock</h5></div>
                            </div>
                        </a>
                    </div>

                    <%
                        }
                    %> 

                    <% if (temp_pp.getPuesto_permisos_permisos() == 6) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../producto_trabajador/registrar_producto.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/producto.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Registrar producto</h5></div>
                            </div>
                        </a>
                    </div>

                    <%
                        }
                    %> 

                    <% if (temp_pp.getPuesto_permisos_permisos() == 7) {
                    %>

                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../producto_trabajador/crud_producto.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/crud producto.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Crud producto</h5></div>
                            </div>
                        </a>
                    </div>  

                    <%
                        }
                    %> 



                    <% if (temp_pp.getPuesto_permisos_permisos() == 8) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../lista_pedidos_trabajador/Lista_pedidos_completos.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/crud pedido.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Crud pedido</h5></div>
                            </div>
                        </a>
                    </div>
                    <%
                        }
                    %> 



                    <% if (temp_pp.getPuesto_permisos_permisos() == 9) {
                    %>
                    <!--   <div class="col-md-4 col-xs-12 col-sm-12">
                           <a href="#">
                               <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                   <div><img src="../imagenes/registrar pedido.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                   <div><h5>Registrar pedido</h5></div>
                               </div>
                           </a>
                       </div>-->

                    <%
                        }
                    %> 



                    <% if (temp_pp.getPuesto_permisos_permisos() == 10) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../proveedor/crud_proveedor.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/lista proveedores.png" width="85" height="85" alt="detergente"/></div> 
                                <div><h5>Crud proveedor</h5></div>
                            </div>
                        </a>
                    </div>

                    <%
                        }
                    %> 



                    <% if (temp_pp.getPuesto_permisos_permisos() == 11) {
                    %>

                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../proveedor/registrar_proveedor.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/proveedor.png" width="85" height="85" alt="protector"/></div> 
                                <div><h5>Registrar proveedor</h5></div>
                            </div>
                        </a>
                    </div>

                    <%
                        }
                    %> 



                    <% if (temp_pp.getPuesto_permisos_permisos() == 12) {
                    %>

                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../encomienda/reporte_encomienda.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/crud encomienda.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Reporte encomienda</h5></div>
                            </div>
                        </a>
                    </div>
                    <%
                        }
                    %> 



                    <% if (temp_pp.getPuesto_permisos_permisos() == 13) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../encomienda/registrar_encomienda.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/registrar encomienda.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Registrar encomienda</h5></div>
                            </div>
                        </a>
                    </div>

                    <%
                        }
                    %> 



                    <% if (temp_pp.getPuesto_permisos_permisos() == 14) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../vehiculo/lista_vehiculos.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/lista vehiculo.png" width="85" height="85" alt="lejia"/></div> 
                                <div><h5>Crud vehiculo</h5></div>
                            </div>
                        </a>
                    </div>

                    <%
                        }
                    %> 



                    <% if (temp_pp.getPuesto_permisos_permisos() == 15) {
                    %>
                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="../vehiculo/registrar_vehiculo.jsp">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/vehiculo.png " width="70" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Registrar vehiculo</h5></div>
                            </div>
                        </a>
                    </div>

                    <%
                        }
                    %> 


                    <% if (temp_pp.getPuesto_permisos_permisos() == 16) {
                    %>

                    <div class="col-md-4 col-xs-12 col-sm-12">
                        <a href="#">
                            <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                                <div><img src="../imagenes/ver encomienda.png" width="80" height="85" alt="deshumedecedor"/></div> 
                                <div><h5>Ver encomienda</h5></div>
                            </div>
                        </a>
                    </div>
                    <%
                        }
                    %> 


                    <%
                        }


                    %>

                </div>
            </div>
        </div>
        <br><br>
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
                            <a href="../trabajador_nosotros/Preguntas.jsp" style="color: #000">PREGUNTAS FRECUENTES</a> 

                            <br>
                            <a href="../trabajador_nosotros/Politica.jsp"style="color: #000" > POLITICA PRIVACIDAD  </a>   
                            <br>

                            <a href="../trabajador_nosotros/contacto.jsp"style="color: #000">CONTACTANOS</a> 

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