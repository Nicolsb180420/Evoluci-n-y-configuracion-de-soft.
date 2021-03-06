
<%@page import="logica.logica_pedido"%>
<%@page import="datos.pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="#" />  
        <title>Reporte ventas</title>
        <link rel="icon" type="image/png" href="../imagenes/logo.png " />


        <link rel="stylesheet" type="text/css" href="../diceno/css/menu_principal.css">

        <link href="../diceno/css/navbar.css" rel="stylesheet">



        <link rel="stylesheet" href="../diceno/css/css_des/pure-drawer.css"/>

        <script src="../diceno/js/jquery-3.5.1.slim.min.js"></script>
        <script src="../diceno/js/bootstrap.bundle.min.js"></script>

        <script src="../diceno/css/slick/slick.js" type="text/javascript" charset="utf-8"></script>
        <link href="../diceno/css/navbar-top-fixed.css" rel="stylesheet">     


        <link rel="stylesheet" href="../diceno/css/categorias.css">


        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../diceno/css/bootstrap.min.css">
        <!-- CSS personalizado --> 
        <link rel="stylesheet" href="../diceno/main.css">  

        <!--datables CSS básico-->
        <link rel="stylesheet" type="text/css" href="../diceno/Datatables/datatables.min.css"/>
        <!--datables estilo bootstrap 4 CSS-->  
        <link rel="stylesheet"  type="text/css" href="../diceno/Datatables/DataTables-1.10.22/css/dataTables.bootstrap4.min.css">

        <!--font awesome con CDN-->  
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">  

        <!-- jQuery, Popper.js, Bootstrap JS -->
        <script src="../diceno/js/jquery-3.5.1.min.js"></script>
        <script src="../diceno/js/popper.min.js"></script>
        <script src="../diceno/js/bootstrap.min.js"></script>

        <!-- datatables JS -->
        <script type="text/javascript" src="../diceno/Datatables/datatables.min.js"></script>    

        <!-- para usar botones en datatables JS -->  
        <script src="../diceno/Datatables/Buttons-1.6.5/js/dataTables.buttons.min.js"></script>  
        <script src="../diceno/Datatables/JSZip-2.5.0/jszip.min.js"></script>    
        <script src="../diceno/Datatables/pdfmake-0.1.36/pdfmake.min.js"></script>    
        <script src="../diceno/Datatables/pdfmake-0.1.36/vfs_fonts.js"></script>
        <script src="../diceno/Datatables/Buttons-1.6.5/js/buttons.html5.min.js"></script>

        <!-- código JS propìo-->    
        <script type="text/javascript" src="../diceno/main.js"></script>  

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


                                    <form action="../login/login_controlador.jsp" class="px-4 py-3" method="post">

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


        <div style="height:50px"></div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <p class="h3" style="color: #CE6100"> <strong>Reporte ventas</strong></p> <br>
                    </center>
                </div>
            </div>
        </div>
        <div class="container" style="min-height: 55vh; width: auto">
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">        
                        <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>

                                    <th>ID</th>
                                    <th>NOMBRE</th>
                                    <th>APELLIDO</th>
                                    <th>TELEFONO</th>
                                    <th>DISTRITO</th>
                                    <th>DIRECCION</th>
                                    <th>FECHA PEDIDO</th>
                                    <th>PAGO</th>
                                    <th>ESTADO</th>
                                    <th></th>

                                </tr>
                            </thead>

                            <tbody>
                                <%
                                    pedido temp_listap = new pedido();
                                    logica_pedido con = new logica_pedido();

                                    con.VerPedidosDeClientes();
                                    for (int i = 0; i < logica_pedido.logica_pedido.size(); i++) {
                                        temp_listap = (pedido) logica_pedido.logica_pedido.get(i);
                                        if (temp_listap.getPedido_estado() == 1 || temp_listap.getPedido_estado() == 2) {

                                %>

                                <tr>

                                    <td><%=temp_listap.getPedido_id()%></td>

                                    <td><%=temp_listap.getCliente_nombre()%></td>

                                    <td><%=temp_listap.getCliente_apellido()%></td>

                                    <td><%=temp_listap.getPedido_telefono()%></td>

                                    <td><%=temp_listap.getDesdist()%></td>

                                    <td><%=temp_listap.getPedido_ubicacion()%></td>

                                    <td><%=temp_listap.getPedido_fecha()%></td>

                                    <td><% out.print("S/." + temp_listap.getPedido_pago());%></td>

                                    
                                    
                                    <%
                                        if (temp_listap.getPedido_estado() == 0) {
                                    %>
                                    <td>Solicitado</td>
                                    <%
                                        }
                                        if (temp_listap.getPedido_estado() == 1) {
                                    %>
                                    <td>Pagado</td>
                                    <%
                                        }
                                        if (temp_listap.getPedido_estado() == 2) {
                                    %>
                                    <td>Entregado</td>
                                    <%}%>
                                    
                                    
                                    <td>


                                        <a href="ver_pedido.jsp?id=<%=temp_listap.getPedido_id()%>">
                                            <center>    <img src="../imagenes/icono_ver.png" width="30" height="30" alt="ver"/>  </center>
                                        </a>


                                    </td>

                                </tr>
                                <%}
                                    }%>
                            </tbody>
                        </table>   

                    </div>
                </div>
            </div>
        </div>

<br><br><br><br>   <br><br><br><br>
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