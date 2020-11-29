<%-- 
    Document   : reporte_encomienda
    Created on : 29/11/2020, 03:42:41 AM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_encomienda"%>
<%@page import="datos.encomienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Reporte encomienda</title>

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

            <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick.css">
            <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick-theme.css">


            <script src="../diceno/js/jquery-2.2.0.min.js" type="text/javascript"></script>
            <script src="../diceno/css/slick/slick.js" type="text/javascript" charset="utf-8"></script>
            <link href="../diceno/css/navbar-top-fixed.css" rel="stylesheet">     

            <%--caja de texto--%>

            <link rel="stylesheet" href="../diceno/css/caja_text.css">
            <link rel="stylesheet" href="../diceno/css/categorias.css">
            <link rel="stylesheet" href="../diceno/css/jquery.dataTables.min.css"/>
            <script src="../diceno/js/jquery.dataTables.min.js" type="text/javascript"></script>

            <script>
                $(document).ready(function () {
                    $('#tabla_alumno').DataTable({
                        "order": [[1, "asc"]], /*ordenar por el nombre*/
                        "language": {
                            "lengthMenu": "Mostrar _MENU_ registros por pagina",
                            "info": "Mostrando pagina _PAGE_ de _PAGES_",
                            "infoEmpty": "No hay registros disponibles",
                            "infoFiltered": "(filtrada de _MAX_ registros)",
                            "loadingRecords": "Cargando...",
                            "processing": "Procesando...",
                            "search": "Buscar:",
                            "zeroRecords": "No se encontraron registros coincidentes",
                            "paginate": {
                                "next": "Siguiente",
                                "previous": "Anterior"
                            },
                        }
                    });
                });
            </script>


        </head>

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



    <br><br>
    <div class="container">

        <div class="row table-responsive">
            <table class="display" id="tabla_alumno">
                <thead style="background: #F38500;">
                    <tr class="text-center">
                        <th>ID</th>
                        <th></th>
                        <th>PLACA</th>
                        <th>DEPARTAMENTO</th>
                        <th>PROVINCIA</th>
                        <th>DISTRITO</th>
                        <th>FECHA</th>
                        <th>ESTADO</th>


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
                        <td><%=temp.getEncomienda() %></td>

                        <td> <input hidden="" name="" value="<%=temp.getEncomienda_vehiculo() %>" /> </td>    

                        <td><%=temp.getVehiculo_placa() %></td>

                        <td><%=temp.getDesdep() %></td>

                        <td><%=temp.getDespro() %></td>

                        <td><%=temp.getDesdist() %></td>

                        <td><%=temp.getEncomienda_fecha() %></td>

                        <td><%=temp.getEncomienda_estado() %></td>

                    </tr>
                    <%}%>
                </tbody>
            </table>   

        </div>

    </div>







</body>
</html>