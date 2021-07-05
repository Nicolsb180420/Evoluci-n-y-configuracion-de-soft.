

<%@page import="datos.categoria"%>
<%@page import="logica.logica_categoria"%>
<%@page import="logica.logica_login"%>
<%@page import="datos.login"%>
<%@page import="datos.cliente"%>
<%@page import="logica.logica_cliente"%>
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

       
        <link rel="stylesheet" href="../diceno/css/estilos.css">

    </head>


    <body>
        <%

            int error = 0;
            int correo_igual = 0;

            if (request.getParameter("btnGuardar") != null) {
                logica_cliente.estado = 1;
            }

            cliente temp = new cliente();
            logica_cliente con = new logica_cliente();

            login temp2 = new login();
            logica_login con2 = new logica_login();

        %>

        <%            if (logica_cliente.estado == 1) {

                error = 0;
                correo_igual = 0;

                if (request.getParameter("txtnombre") == null) {

                    error++;

                } else {

                }

                if (request.getParameter("txtapellido") == null) {
                    error++;
                } else {
                }

                if (request.getParameter("txtfecha") == null) {
                    error++;

                } else {

                }

                if (request.getParameter("txtemail") == null) {
                    error++;

                } else {
                    //  out.print("el campo no esta vacio ");

                    con2.validar_email();

                    for (int i = 0; i < logica_login.logica_login.size(); i++) {
//out.print("<br>"+request.getParameter("txtemail")+"<br>");
                        temp2 = (login) logica_login.logica_login.get(i);
//out.print(temp2.getLogin_correo()+"<br>");

                        if (temp2.getLogin_correo().equals(request.getParameter("txtemail"))) {

                            //  out.print("hay igualdad de correos ");
                            error++;
                            correo_igual++;
                        } else {

                        }

                    }

                }

                if (request.getParameter("txtcontrasena1") == null) {

                    error++;

                } else {

                }

                if (request.getParameter("txtcontrasena2") == null) {

                    error++;

                } else {

                }

                if (request.getParameter("txtcontrasena1").equals(request.getParameter("txtcontrasena2"))) {

                } else {
                    error++;
                }

                if (error == 0) {

                    temp = new cliente(
                            request.getParameter("txtnombre"),
                            request.getParameter("txtapellido"),
                            request.getParameter("txtfecha"),
                            request.getParameter("txtemail"),
                            request.getParameter("txtcontrasena1")
                    );

                    con.insertar(temp);
                    response.sendRedirect("../menu_principal/login.jsp");
                    //   out.print(request.getParameter("txtemail")+"<br>");
                    // out.print(request.getParameter("txtcontrasena1")+"<br>");

                    //out.print("guardo , esta bien niño lo lograste pero estas seguro de hacer esto ? ");
                } else {
                    //out.print("no guardo ; esta bien niño lo lograste pero estas seguro de hacer esto ? ");
                }

                 
            }
        %> 


        <%
            //  out.print(error);
            if (error > 0) {
        %>


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
                                    <br>
                                    <%
                                        categoria temp1 = new categoria();
                                        logica.logica_categoria con1 = new logica_categoria();
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

                                    <form class="px-4 py-3" method="post">

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
                    <center>
                        <p class="h3" style="color: #CE6100"> <strong>¿No estás registrado?</strong></p> <br>
                        <p class="h6"><strong>Regístrate y disfrutarás de una experiencia de compra más rápida</strong></p> 
                    </center>
                </div>
            </div>
        </div>

        <form action="" name="formulario" method="post">
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <center>
                            <img src="../imagenes/gente.png" width="120" height="120" alt="gente"/>
                            <p class="h5" style="color: #CE6100"> <strong>Beneficios de tener una cuenta</strong></p> <br>
                        </center>

                        <center>
                            <li style="color: #818182"><strong>Comprar en un click.</strong></li>
                            <li style="color: #818182">Revisar tu <strong>historial de compras.</strong></li>
                            <li style="color: #818182">Guardar y actualizar <strong>tus datos o direcciones.</strong></li>
                        </center>
                    </div>

                    <div class="col-6" >
                        <%
                            if (request.getParameter("txtnombre") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo nombre se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>
                        <div class="form">
                            <input type="text" required="" name="txtnombre" value="<%=request.getParameter("txtnombre")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Nombre</strong></span>
                            </label>
                        </div>

                        <%
                            if (request.getParameter("txtapellido") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo apellido se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>


                        <div class="form">
                            <input type="text" required="" name="txtapellido" value="<%= request.getParameter("txtapellido")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Apellidos</strong></span>
                            </label>
                        </div>


                        <%
                            if (request.getParameter("txtfecha") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo fecha se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>

                        <div class="form">

                            <input type="date" required="" style="color: #CE6100" name="txtfecha" value="<%=request.getParameter("txtfecha")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"></span>
                            </label>
                        </div>

                        <%
                            if (request.getParameter("txtemail") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo e-mail se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                        } else {
                            if (correo_igual > 0) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            Este correo ya se encuentra registrado
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <%
                                }

                            }
                        %>

                        <div class="form">
                            <input type="email" required="" name="txtemail" value="<%=request.getParameter("txtemail")%>"  >
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Correo</strong></span>
                            </label>
                        </div>



                        <%
                            if (request.getParameter("txtcontrasena1") != null && request.getParameter("txtcontrasena2") != null) {

                                if (request.getParameter("txtcontrasena1").equals(request.getParameter("txtcontrasena2"))) {
                                } else {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            Las contraseñas no coinciden
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                                }
                            } else {

                            }

                        %>       


                        <%                            if (request.getParameter("txtcontrasena1") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo comtraseña se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>




                        <div class="form">
                            <input type="password" required="" name="txtcontrasena1"  id="txtcontrasena1" value="<%=request.getParameter("txtcontrasena1")%>" >
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Contraseña</strong></span>
                            </label>
                        </div>

                        <%
                            if (request.getParameter("txtcontrasena2") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo confirmar contraseña se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>

                        <div class="form">
                            <input type="password" required="" name="txtcontrasena2" id="txtcontrasena2" value="<%=request.getParameter("txtcontrasena2")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Vuelva a escribir contraseña</strong></span>
                            </label>
                        </div>
                    </div> 
                </div>
            </div>




            <br><br>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <center>
                            <input type="submit" name="btnGuardar" value="Guardar" class="btn" style="background: #CE6100; color: #ffffff" />
                            <button type="button" class="btn btn-danger" >Cancelar</button> <br>
                        </center>
                    </div>
                </div>
            </div> 

        </form>
        <br><br>

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

        <%
            }
        %>


    </body>
</html>

