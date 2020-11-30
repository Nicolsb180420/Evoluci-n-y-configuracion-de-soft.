<%-- 
    Document   : ver_pedido
    Created on : 27/11/2020, 10:52:58 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_lista_pedido"%>
<%@page import="logica.logica_pedido"%>
<%@page import="datos.pedido"%>
<%@page import="datos.lista_pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="#" />  
        <title>Ver pedido</title>
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


        <div style="height:50px"></div>
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
            logica_pedido con1 = new logica_pedido();

            lista_pedido temp_listap = new lista_pedido();
            logica_lista_pedido con = new logica_lista_pedido();
            int id_temp = Integer.parseInt(request.getParameter("id"));

            con.ver_lista_pedido(id_temp);
            con1.ver_datos_cliente(id_temp);
        %>  

        <form action="Lista_pedidos_completos.jsp">

            <div class="container" style="min-height: 55vh; width: auto">
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

                    <div class="col-lg-12">
                        <div class="table-responsive">        
                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr>

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
                                                       /*  out.print("../imagenes/productos/" + temp.getProducto_imagen().substring(98, temp.getProducto_imagen().length()));*/%>" width="auto" height="100"  class="card-body-top" /></td>

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
