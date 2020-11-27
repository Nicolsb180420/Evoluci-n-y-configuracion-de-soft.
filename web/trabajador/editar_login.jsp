<%-- 
    Document   : editar_login
    Created on : 24/11/2020, 08:13:08 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_login"%>
<%@page import="datos.login"%>
<%@page import="logica.logica_trabajador"%>
<%@page import="datos.trabajador"%>
<%@page import="logica.logica_puesto"%>
<%@page import="datos.puesto"%>
<%@page import="logica.logica_departamento"%>
<%@page import="datos.departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Cambiar contraseña</title>
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
              


        <br><br>


        <!--  000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000                -->


        <div class="container">
            <%
                login temp = new login();
                logica_login con = new logica_login();
                int id_temp = Integer.parseInt(request.getParameter("id"));

                con.consultar();

                String correo = null;

                for (int i = 0; i < logica_login.logica_login.size(); i++) {
                    temp = (login) logica_login.logica_login.get(i);
                    if (id_temp == temp.getLogin_id()) {
                        correo = temp.getLogin_correo();
                       //contra = temp.getLogin_contra();
                    }
                }%>



            <div class="row">
                <div class="col-12">
                    <center>
                        <p class="h3" style="color: #CE6100"> <strong>Cambio de contraseña</strong></p> <br>
                    </center>
                </div>
            </div>
        </div>


        <br>

        <form action="estado_trabajador_edit.jsp" >

            <div class="container">


                <div class="row">

                    <div class="col-6">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">ID</span>
                            </div>
                            <input type="text" class="form-control" name="txt_id" value="<%=id_temp%>" >
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Correo</span>
                            </div>
                            <input type="text" class="form-control" name="txt_correo" value="<%=correo%>" disabled="">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Contraseña</span>
                            </div>
                            <input type="password" class="form-control" name="txt_contrasena" >
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <center>

                                    <input type="submit" value="Cambiar contraseña" name="btnActualizar1" class="btn btn-outline-dark" style="background:  #F38500;"/>


                                    <!--      <button type="button" class="btn btn-danger" >Cancelar</button> <br>-->

                                </center>
                            </div>
                        </div>
                    </div> 
                </div> 
            </div> 
        </form>

        <br><br>

        

    </body>
</html>
