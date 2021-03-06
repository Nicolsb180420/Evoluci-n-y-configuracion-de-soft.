

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

                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1" >

                        <div class="pure-container" data-effect="pure-effect-push">


                            
                                <a href="../menu_principal/menu_principal_trabajador.jsp"><img src="../imagenes/logo.png" width="100" height="60" /> </a>  

                            
                        </div>  


                    </div>

                    <div class="col-11 col-sm-11 col-md-11 col-lg-11 col-xl-11">


                        <div class="btn-group   float-right align-self-end"  >

                            <% if (trabajador_id.equals("NN")) {%>
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
                                            <label for="exampleDropdownFormPassword1">Contrase??a :</label>
                                            <input type="contra" class="form-control" id="exampleDropdownFormPassword1" placeholder="Contrase??a" name="contra">
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
                                    <a class="dropdown-item" href="#">??Olvidaste tu contrase??a?</a>

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
            <p>actualmente no se encuentra vehiculos disponibles para los pedidos </p>
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
                    <center>
                        <p class="h3" style="color: #CE6100"> <strong>Registrar encomienda</strong></p> <br>
                    </center>
                </div>
            </div>
        </div>
        
        <div class="container" style="min-height: 50vh; width: auto">
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
                                    <th>N?? IDENT.</th>
                                    <th>TELEFONO</th>
                                   
                                  
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

                                    <td><a href="../trabajador/ver_trabajador.jsp?id=<%=temp_tra.getTrabajador_id()%>" ><center>    <img src="../imagenes/icono_ver.png" width="30" height="30" alt="ver"/>  </center></a> </td>
                                    <td><a href="agregar_trabajador.jsp?id=<%=temp_tra.getTrabajador_id()%>" class="btn btn-danger" style=" background: #CE6100 ">AGREGAR</a> </td>
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

                                        <td><a href="../trabajador/ver_trabajador.jsp?id=<%=temp_tra.getTrabajador_id()%>" ><center>    <img src="../imagenes/icono_ver.png" width="30" height="30" alt="ver"/>  </center></a> </td>
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


                                            <a href="../lista_pedidos_trabajador/ver_pedido.jsp?id=<%=temp_listap.getPedido_id()%>">
                                                <center>    <img src="../imagenes/icono_ver.png" width="30" height="30" alt="ver"/>  </center>
                                            </a>


                                        </td>
                                        <td><a href="agregar_pedido.jsp?id=<%=temp_listap.getPedido_id()%>" class="btn btn-danger" style=" background: #CE6100 " >AGREGAR</a> </td>

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
                                        <th>PROVINCIA</th>
                                        <th>DEPARTAMENTO</th>
                                        
                                        <th>FECHA DE PEDIDO</th>
                                      
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

                                      

                              

                                        <td><%=temp_cp.getPedido_id()%></td>

                                        <td><%=temp_cp.getCliente_nombre()%></td>

                                        <td><%=temp_cp.getCliente_apellido()%></td>

                                        <td><%=temp_cp.getPedido_telefono()%></td>

                                        <td><%=temp_cp.getDesdist()%></td>

                                        <td><%=temp_cp.getDespro()%></td>

                                        <td><%=temp_cp.getDesdep()%></td>

                                        <td><%=temp_cp.getPedido_fecha()%></td>


                                     


                                        <td>


                                            <a href="../lista_pedidos_trabajador/ver_pedido.jsp?id=<%=temp_listap.getPedido_id()%>">
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


                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style=" background: #CE6100">
                    Registrar Encomienda
                </button>
                                <br>
                                <br>

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
                            <form action="operador_registrar.jsp" id="data" method="post">
                                <div class="modal-body">






                                    <%
                                        departamento dep = new departamento();
                                        logica.logica_departamento con_dep = new logica_departamento();
                                        con_dep.consultarDep();
                                    %>

                                    <div class="form-group">
                                        <label >Departamento :</label>
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
                                    <button type="submit" class="btn btn-primary" style=" background: #CE6100">Guardar</button>
                                </div>
                            </form>              
                        </div>
                    </div>
                </div>           





            </div>  



<%}%>

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
                        <p class="h5">???Un hogar impecable es nuestra misi??n"</p>
                        <br>
                        <img src="../imagenes/ubicacion.png" width="25" height="25" alt="ubicacion"/>


                        Mza H Lote 01 urb. Pro Industrial S.M.P Lima-Per??
                        <br>
                        <img src="../imagenes/telefono.png" width="35" height="30" alt="telefono"/>

                        Tel??fono:  536-4941
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
