<%-- 
    Document   : crud_trabajador
    Created on : 24/11/2020, 05:27:14 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_trabajador"%>
<%@page import="datos.trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Proveedores</title>
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

    </head>

<body>
 <div class="container-fluid">
            <%
                /*  String cliente_id;
                HttpSession sesion = request.getSession();
                cliente_id = sesion.getAttribute("cliente_id").toString();
                 */
                //out.print(cliente_id);
               /* categoria temp1 = new categoria();
                logica.logica_categoria con1 = new logica_categoria();*/
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

            </div>
        </nav>


    </div>
              

        <br>
        <br>

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
                                    <th>FECHA NAC.</th>
                                    <th>T. IDENT.</th>
                                    <th>N° IDENT.</th>
                                    <th>TELEFONO</th>
                                    <th>CONTACTO</th>
                                    <th>TEL. CONTACTO</th>
                                    <th>PUESTO</th>
                                    <th>DIA INGRESO</th>
                                    <th>ID LOG.</th>
                                    <th>CORREO</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    trabajador temp2 = new trabajador();
                                    logica_trabajador con2 = new logica_trabajador();

                                    con2.consultar();

                                    for (int i = 0; i < logica_trabajador.logica_trabajador.size(); i++) {
                                        temp2 = (trabajador) logica_trabajador.logica_trabajador.get(i);

                                %>

                                <tr>
                                    <td><%=temp2.getTrabajador_id() %></td>
                                    <td><%=temp2.getTrabajador_nombre() %></td>
                                    <td><%=temp2.getTrabajor_apellido() %></td>
                                    <td><%=temp2.getTrabajador_sexo() %></td>
                                    <td><%=temp2.getTrabajador_nacimiento() %></td>
                                    <td><%=temp2.getTrabajador_tipo_identidad() %></td>
                                    <td><%=temp2.getTrabajador_numero_identidad()  %></td>
                                    <td><%=temp2.getTrabajador_telefono()  %></td>
                                    <td><%=temp2.getTrabajador_contacto() %></td>
                                    <td><%=temp2.getTrabajador_contacto_telefono() %></td>
                                    <td><%=temp2.getPuesto_nombre() %></td>
                                    <td><%=temp2.getTrabajador_dia() %></td>
                                    <td><%=temp2.getLogin_id() %></td>
                                    <td><%=temp2.getLogin_correo()  %></td>
                                   <!-- <td><%=temp2.getLogin_contra()  %></td> -->
                                    <td><a href="ver_trabajador.jsp?id=<%=temp2.getTrabajador_id() %>" class="btn btn-danger">VER</a> </td>
                                    <td><a href="editar_trabajador.jsp?id=<%=temp2.getTrabajador_id() %>" class="btn btn-danger">EDITAR</a> </td>
                                    <td><a href="eliminar_trabajador.jsp?id=<%=temp2.getLogin_id() %>" class="btn btn-danger">ELIMINAR</a> </td>
                                    <td><a href="editar_login.jsp?id=<%=temp2.getLogin_id() %>" class="btn btn-danger">CONTRASEÑA</a> </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>   

                            <a href="registrar_trabajador.jsp"><button type="button" class="btn btn-danger">NUEVO</button></a> 
                    </div>
                </div>
            </div>
        </div>      

        
    </body>
</html>