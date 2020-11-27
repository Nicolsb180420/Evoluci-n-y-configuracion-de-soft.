<%-- 
    Document   : menu_principal_trabajador
    Created on : 18/11/2020, 09:49:45 PM
    Author     : Nicol Samanamud 
--%>


<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <link rel="stylesheet" href="../diceno/css/categorias.css">

    </head>

    <body>

        <div class="container-fluid">
            <%
                /*  String cliente_id;
                HttpSession sesion = request.getSession();
                cliente_id = sesion.getAttribute("cliente_id").toString();
                 */
                //out.print(cliente_id);
                categoria temp1 = new categoria();
                logica.logica_categoria con1 = new logica_categoria();
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


</div>

<br><br>

<div class="container">
    <div class="row">
        <div class="col-12">
            <center>
                <p class="h3" style="color: #CE6100"> <strong>Portal del empleado</strong></p> <br>
            </center>
        </div>
    </div>
</div>

<div class="container">
    <div class="categories-section">
        <div class="row">
            <div class="col-md-4 col-xs-12 col-sm-12">
                <a href="../trabajador/crud_trabajador.jsp">
                    <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                        <div><img src="../imagenes/lista trabajador.png" width="150" height="85" alt="ambientador"/></div> 
                        <div><h5>Crud trabajador</h5></div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-12">
                <a href="../trabajador/registrar_trabajador.jsp">
                    <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                        <div><img src="../imagenes/trabajador.png" width="85" height="85" alt="desinfectante"/></div> 
                        <div><h5>Registrar trabajador</h5></div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-12">
                <a href="../proveedor/crud_proveedor.jsp">
                    <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                        <div><img src="../imagenes/lista proveedores.png" width="85" height="85" alt="detergente"/></div> 
                        <div><h5>Crud proveedor</h5></div>
                    </div>
                </a>
            </div>


            <div class="col-md-4 col-xs-12 col-sm-12">
                <a href="../proveedor/registrar_proveedor.jsp">
                    <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                        <div><img src="../imagenes/proveedor.png" width="85" height="85" alt="protector"/></div> 
                        <div><h5>Registrar proveedor</h5></div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-12">
                <a href="../vehiculo/lista_vehiculos.jsp">
                    <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                        <div><img src="../imagenes/lista vehiculo.png" width="85" height="85" alt="lejia"/></div> 
                        <div><h5>Crud vehiculo</h5></div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-12">
                <a href="../vehiculo/registrar_vehiculo.jsp">
                    <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                        <div><img src="../imagenes/vehiculo.png " width="70" height="85" alt="deshumedecedor"/></div> 
                        <div><h5>Registrar vehiculo</h5></div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-12">
                <a href="../info_producto/registrar_producto.jsp">
                    <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                        <div><img src="../imagenes/producto.png" width="80" height="85" alt="deshumedecedor"/></div> 
                        <div><h5>Registrar producto</h5></div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-12">
                <a href="../stock/lista_stock_1.jsp">
                    <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                        <div><img src="../imagenes/stock.png" width="80" height="85" alt="deshumedecedor"/></div> 
                        <div><h5>Actualizar stock</h5></div>
                    </div>
                </a>
            </div>
            
        </div>
    </div>
</div>


</body>
</html>