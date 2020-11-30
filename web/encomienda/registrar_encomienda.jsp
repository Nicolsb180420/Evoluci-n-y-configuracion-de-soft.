<%-- 
    Document   : registrar_encomienda
    Created on : 28/11/2020, 10:35:38 AM
    Author     : bryan
--%>

<%@page import="logica.logica_capsula_pedido"%>
<%@page import="datos.capsula_pedido"%>
<%@page import="logica.logica_capsula_trabajador"%>
<%@page import="datos.capsula_trabajador"%>
<%@page import="logica.logica_vehiculo"%>
<%@page import="datos.vehiculo"%>
<%@page import="logica.logica_departamento"%>
<%@page import="datos.departamento"%>
<%@page import="logica.logica_trabajador"%>
<%@page import="datos.trabajador"%>
<%@page import="logica.logica_pedido"%>
<%@page import="datos.pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registro encomienda</title>
        <link rel="icon" type="image/png" href="../imagenes/logo.png " />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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



        <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous"></script>

        <script type="text/javascript">
            function comboDep() {
                //alert("hola mundo");
                $("#f_opc").val("1");
                $.post("../combos/combo_provincia.jsp", $("#data").serialize(), function (data)
                {
                    $("#id_provi").html(data);
                });
            }


        </script>



        <script type="text/javascript">
            function comboDistri() {
                // alert("hola mundo");
                $("#x_opc").val("1");
                $.post("../combos/combo_distrito.jsp", $("#data").serialize(), function (data)
                {
                    $("#id_distri").html(data);
                });

            }
        </script>


    </head>
    <body>
        <% String trabajador_id;
            HttpSession sesion_trabajadro = request.getSession();
            trabajador_id = sesion_trabajadro.getAttribute("trabajador_id").toString();
            String puesto = sesion_trabajadro.getAttribute("trabajador_puesto").toString();%>

        <br><br>

        <div class="container-fluid">


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

                            <% if (trabajador_id.equals("NN")) {%>
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


        <%
            vehiculo temp_v = new vehiculo();
            logica_vehiculo con_v = new logica_vehiculo();

            con_v.vehiculo_disponible();

            if (logica_vehiculo.Lvehiculos.size() == 0) {
        %>
        <div class="alert alert-danger" role="alert">
            <h4 class="alert-heading">ERROR!</h4>
            <p>actual mente no se encuentra vehiculos disponibles para los pedidos </p>
            <hr>
            <p class="mb-0">AVISO : no se podra registrar ninguna encomienda </p>
        </div>             

        <%
          //  int sin_carro =1;
            
            } else {

            

        %>                           
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <table class="table table-hover table-responsive">
                            <thead>
                                <tr class="text-center">
                                    <th>ID</th>
                                    <th>NOMBRE</th>
                                    <th>APELLIDO</th>
                                    <th>SEXO</th>

                                    <th>T. IDENT.</th>
                                    <th>N° IDENT.</th>
                                    <th>TELEFONO</th>
                                    <th>ESTADO</th>

                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%                                    trabajador temp_tra = new trabajador();
                                    logica_trabajador con_tra = new logica_trabajador();
                                   

                                    con_tra.consultar_repartidor();
                                    
                                    
                                    
                                    for (int i = 0; i < logica_trabajador.logica_trabajador.size(); i++) {
                                        temp_tra = (trabajador) logica_trabajador.logica_trabajador.get(i);

                                %>

                                <tr>
                                    <td><%=temp_tra.getTrabajador_id()%></td>
                                    <td><%=temp_tra.getTrabajador_nombre()%></td>
                                    <td><%=temp_tra.getTrabajor_apellido()%></td>
                                    <td><%=temp_tra.getTrabajador_sexo()%></td>

                                    <td><%=temp_tra.getTrabajador_tipo_identidad()%></td>
                                    <td><%=temp_tra.getTrabajador_numero_identidad()%></td>
                                    <td><%=temp_tra.getTrabajador_telefono()%></td>

                                    <td><a href="ver_trabajador.jsp?id=<%=temp_tra.getTrabajador_id()%>" class="btn btn-danger">VER</a> </td>
                                    <td><a href="agregar_trabajador.jsp?id=<%=temp_tra.getTrabajador_id()%>" class="btn btn-danger">agregar</a> </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>   

                    </div>
                </div>
            </div>
                             

          
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <table class="table table-hover table-responsive">
                                <thead>
                                    <tr class="text-center">
                                        <th>ID</th>
                                        <th>ID_trabajador</th>
                                        <th>ID_repartidor</th>
                                        <th>NOMBRE</th>
                                        <th>APELLIDO</th>

                                        <th>TELEFONO</th>


                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        capsula_trabajador temp_ct = new capsula_trabajador();
                                        logica_capsula_trabajador con_ct = new logica_capsula_trabajador();

                                        con_ct.mostrar_capsula_trabajador(trabajador_id);
                                        //out.print(logica_capsula_trabajador.logica_capsula_trabajador.size());
                                        for (int i = 0; i < logica_capsula_trabajador.logica_capsula_trabajador.size(); i++) {
                                            temp_ct = (capsula_trabajador) logica_capsula_trabajador.logica_capsula_trabajador.get(i);

                                    %>

                                    <tr>
                                        <td><%=temp_ct.getCapsula_trabajador_id()%></td>
                                        <td><%=temp_ct.getCapsula_trabajador_trabajador()%></td>
                                        <td><%=temp_ct.getCapsula_trabajador_repartidor()%></td>
                                        <td><%=temp_ct.getTrabajador_nombre()%></td>
                                        <td><%=temp_ct.getTrabajor_apellido()%></td>

                                        <td><%=temp_ct.getTrabajador_telefono()%></td>

                                        <td><a href="ver_trabajador.jsp?id=<%=temp_tra.getTrabajador_id()%>" class="btn btn-danger">VER</a> </td>
                                        <td><a href="operador_bc_trabajador.jsp?id=<%=temp_ct.getCapsula_trabajador_id()%>" class="btn btn-danger">ELIMINAR</a> </td>

                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>   


                        </div>
                    </div>
                </div>     


                <!-------------------------------------------------------------------------------------------------------------------------------------------------------->                    


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

                                        con.ver_pedidos_estados(1);
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
                                        <td><a href="agregar_pedido.jsp?id=<%=temp_listap.getPedido_id()%>" class="btn btn-danger">agregar</a> </td>

                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>   

                        </div>
                    </div>

                </div>





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
                                        capsula_pedido temp_cp = new capsula_pedido();
                                        logica_capsula_pedido con_cp = new logica_capsula_pedido();

                                        con_cp.mostrar_capsula_trabajador(trabajador_id);
                                        for (int i = 0; i < logica_capsula_pedido.logica_capsula_pedido.size(); i++) {
                                            temp_cp = (capsula_pedido) logica_capsula_pedido.logica_capsula_pedido.get(i);

                                    %>

                                    <tr>

                                        <td><%=temp_cp.getCapsula_pedido_id()%></td>

                                        <td><%=temp_cp.getCapsula_pedido_pedido()%></td>

                                        <td><%=temp_cp.getPedido_id()%></td>

                                        <td><%=temp_cp.getPedido__cliente()%></td>

                                        <td><%=temp_cp.getCliente_nombre()%></td>

                                        <td><%=temp_cp.getCliente_apellido()%></td>

                                        <td><%=temp_cp.getPedido_telefono()%></td>

                                        <td><%=temp_cp.getId_distrito()%></td>


                                        <td><%=temp_cp.getDesdist()%></td>

                                        <td><%=temp_cp.getProvincia_id()%></td>

                                        <td><%=temp_cp.getDespro()%></td>

                                        <td><%=temp_cp.getDepartamento_id()%></td>

                                        <td><%=temp_cp.getDesdep()%></td>

                                        <td><%=temp_cp.getPedido_fecha()%></td>

                                        <td><%=temp_cp.getPedido_estado()%></td>

                                        <td><%=temp_cp.getCapsula_pedido_trabajador()%></td>


                                        <td>


                                            <a href="ver_pedido.jsp?id=<%=temp_listap.getPedido_id()%>">
                                                <center>    <img src="../imagenes/icono_ver.png" width="30" height="30" alt="ver"/>  </center>
                                            </a>
                                        <td><a href="operador_bc_pedido.jsp?id=<%=temp_cp.getCapsula_pedido_id()%>" class="btn btn-danger">ELIMINAR</a> </td>

                                        </td>


                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>   

                        </div>
                    </div>

                </div>


                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    Registrar venta
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Registrar venta</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="operador_registrar.jsp" id="data">
                                <div class="modal-body">






                                    <%
                                        departamento dep = new departamento();
                                        logica.logica_departamento con_dep = new logica_departamento();
                                        con_dep.consultarDep();
                                    %>

                                    <div class="form-group">
                                        <label >Distrito :</label>
                                        <select name="cmbdepartamento" onchange="comboDep()" style="color: #545b62; width: 75%" class="form-control" >

                                            <option value="">SELECCIONAR </option>

                                            <%
                                                for (int i = 0; i < logica_departamento.logica_departamento.size(); i++) {
                                                    dep = (departamento) logica_departamento.logica_departamento.get(i);

                                            %>
                                            <option><%=dep.getDesdep()%></option>

                                            <%}%>

                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label >Provincia :</label>
                                        <select name="cmbprovincia"  id="id_provi" onchange="comboDistri()" style="color: #545b62; width: 75%" class="form-control" >
                                            <option value="">SELECCIONAR </option>
                                        </select>

                                    </div>

                                    <div class="form-group">    
                                        <label >Distrito :</label>
                                        <select name="cmbdistrito" id="id_distri" onchange="comboFin()" style="color: #545b62; width: 75%" class="form-control" >
                                            <option value="">SELECCIONAR </option>
                                        </select>
                                    </div> 



                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-label="Close">cancelar</button>
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                            </form>              
                        </div>
                    </div>
                </div>           





            </div>  



<%}%>

    </body>
</html>
