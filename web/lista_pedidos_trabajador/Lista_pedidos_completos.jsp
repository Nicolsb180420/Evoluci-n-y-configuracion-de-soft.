<%-- 
    Document   : Lista_pedidos_completos
    Created on : 27/11/2020, 10:30:05 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_pedido"%>
<%@page import="datos.pedido"%>
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
        <link rel="stylesheet" href="../diceno/css/estilos.css">

        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    </head>
    <body>
        <div class="container-fluid">


            <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
            <div class="row">
                <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color:#FFAA2E  ">

                    <div class="col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2" style="left:40px">

                        <div class="pure-container" data-effect="pure-effect-push">


                            <input type="checkbox" id="pure-toggle-left" class="pure-toggle" data-toggle="left"/>

                            <label class="pure-toggle-label" for="pure-toggle-left" data-toggle-label="left" style="width: 50px; height:  50px;"  > <span class="pure-toggle-icon" ></span> </label>

                            <div >
                                <a href="menu_principal_xd.jsp"><img src="../imagenes/logo.png" width="100" height="60" /> </a>  

                            </div>

                            <nav class="pure-drawer" data-position="left" style="background:  #F38500;">

                                <br>
                                <br>
                                <br>


                                <div class="nav-primary">

                                    <center>
                                        <div class="btn-group" style="width:100%;">
                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                categorias
                                            </button>
                                            <div class="dropdown-menu" style="width:100%;">

                                                <a class="dropdown-item" href="#" style="color: #000;" >Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#">Separated link</a>
                                            </div>
                                        </div>
                                    </center>




                                    <center>
                                        <div class="btn-group" style="width:100%;   ">
                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                conocenos
                                            </button>
                                            <div class="dropdown-menu" style="width:100%;">


                                                <a class="dropdown-item" href="../Nosotros/Preguntas.jsp">PREGUNTAS FRECUENTES</a>
                                                <a class="dropdown-item" href="../Nosotros/Politica.jsp">POLITICA PRIVACIDA </a>

                                                <a class="dropdown-item" href="../Nosotros/contacto.jsp">CONTACTANOS</a>
                                            </div>
                                        </div>
                                    </center>

                                </div> 
                            </nav>

                            <label class="pure-overlay" for="pure-toggle-left" data-overlay="left"></label> 
                        </div>  


                    </div>



                    <div class="col-8 col-sm-6 col-md-7 col-lg-8 col-xl-9" style="left:14px" >
                        <input type="text"  class="search-for-champion" >

                        <button  class="search-btn" type="button" style="background: #CE6100   " > <img src="../imagenes/buscar.png" width="45" height="45" alt="buscar"/>
                        </button>



                    </div>


                    <div class="col-12 col-sm-4 col-md-3 col-lg-2 col-xl-1">








                        <div class="btn-group   float-right align-self-end"  >
                            <div class="btn-group ">

                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: #CE6100   ">
                                    registrarce o iniciar sesion 
                                </button>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left">

                                    <form class="px-4 py-3">

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
                                    <a class="dropdown-item" href="#">Registrarce</a>
                                    <a class="dropdown-item" href="#">¿Olvidaste tu contraseña?</a>

                                </div>
                            </div>

                        </div>





                    </div>
                </nav>


            </div>


        </div>


        <br><br>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="form-group">

                        <table class="table table-hover">
                            <thead>
                                <tr class="text-center">

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

                                    <td><%=temp_listap.getPedido_estado()%></td>
                                    <td>
                                        <a href="ver_pedido.jsp?id=<%=temp_listap.getPedido_id()%>">
                                            <center>    <img src="../imagenes/icono_ver.png" width="30" height="30" alt="ver"/>  </center>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="cambiar_estado.jsp?id=<%=temp_listap.getPedido_id()%>">
                                            <center>    <img src="../imagenes/icono_cambiar.png" width="30" height="30" alt="ver"/>  </center>
                                        </a>
                                    </td>

                                </tr>
                                <%}%>
                            </tbody>
                        </table>   

                    </div>
                </div>

            </div>

        </div>                     



    </body>
</html>