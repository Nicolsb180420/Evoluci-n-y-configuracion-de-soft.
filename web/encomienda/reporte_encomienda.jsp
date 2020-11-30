<%-- 
    Document   : reporte_encomienda
    Created on : 29/11/2020, 03:42:41 AM
    Author     : Nicol Samanamud 
--%>

<%@page import="datos.capsula_trabajador"%>
<%@page import="logica.logica_encomienda"%>
<%@page import="datos.encomienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="#" />  
        <title>Reporte encomienda</title>
        <link rel="icon" type="image/png" href="../imagenes/logo.png " />


        <link rel="stylesheet" type="text/css" href="../diceno/css/menu_principal.css">

        <link href="../diceno/css/navbar.css" rel="stylesheet">



        <link rel="stylesheet" href="../diceno/css/css_des/pure-drawer.css"/>

        <script src="../diceno/js/jquery-3.5.1.slim.min.js"></script>
        <script src="../diceno/js/bootstrap.bundle.min.js"></script>
        <%--  categoria--%>

        <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick.css">
        <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick-theme.css">

        <script src="../diceno/css/slick/slick.js" type="text/javascript" charset="utf-8"></script>
        <link href="../diceno/css/navbar-top-fixed.css" rel="stylesheet">     

        <%--caja de texto--%>

        <link rel="stylesheet" href="../diceno/css/caja_text.css">
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



        <%--menu despegable--%>   
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



        <div style="height:50px"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">        
                        <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th></th>
                                    <th>PLACA</th>
                                    <th>DEPARTAMENTO</th>
                                    <th>PROVINCIA</th>
                                    <th>DISTRITO</th>
                                    <th>FECHA</th>
                                    <th>ESTADO</th>
                                    <th></th>

                                </tr>
                            </thead>

                            <tbody>
                                <%
                                    encomienda temp = new encomienda();
                                    logica_encomienda con = new logica_encomienda();
                                    
                                   

                                    con.consultar();

                                    for (int i = 0; i < logica_encomienda.logica_encomienda.size(); i++) {
                                        temp = (encomienda) logica_encomienda.logica_encomienda.get(i);

                                %>

                                <tr>
                                    <td><%=temp.getEncomienda()%></td>

                                    <td> <input hidden="" name="" value="<%=temp.getEncomienda_vehiculo()%>" /> </td>    

                                    <td><%=temp.getVehiculo_placa()%></td>

                                    <td><%=temp.getDesdep()%></td>

                                    <td><%=temp.getDespro()%></td>

                                    <td><%=temp.getDesdist()%></td>

                                    <td><%=temp.getEncomienda_fecha()%></td>

                                    <td><%=temp.getEncomienda_estado()%></td>

                                    <td>


                                        <form action="cambiar_estado.jsp">
                                            <input  name="id_encomienda" value="<%=temp.getEncomienda()%>" hidden />
                                            <input  name="id_vehiculo" value="<%=temp.getEncomienda_vehiculo() %>" hidden />
                                            
                                            <input  name="cambiar_estado" value="<%=temp.getEncomienda_estado()%>" hidden />  
                                            <center><button type="submit" class="btn"><img src="../imagenes/icono_cambiar.png" width="30" height="25" alt="ver"/></button></center>
                                        </form> 


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