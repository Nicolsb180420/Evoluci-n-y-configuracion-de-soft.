<%-- 
    Document   : registrar_encomienda
    Created on : 28/11/2020, 10:35:38 AM
    Author     : bryan
--%>

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
        <% String cliente_id;
            HttpSession sesion_trabajadro = request.getSession();
            cliente_id = sesion_trabajadro.getAttribute("trabajador_id").toString();
    String puesto = sesion_trabajadro.getAttribute("trabajador_puesto").toString();%>



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
                                <%
                                    trabajador temp_tra = new trabajador();
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

                        <a href="registrar_trabajador.jsp"><button type="button" class="btn btn-danger">NUEVO</button></a> 
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





    </body>
</html>
