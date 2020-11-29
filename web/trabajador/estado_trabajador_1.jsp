<%-- 
    Document   : estado_trabajador
    Created on : 15/11/2020, 05:25:11 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_login"%>
<%@page import="datos.login"%>
<%@page import="logica.logica_puesto"%>
<%@page import="datos.puesto"%>
<%@page import="logica.logica_departamento"%>
<%@page import="datos.departamento"%>
<%@page import="datos.trabajador"%>
<%@page import="logica.logica_trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Registrar trabajador</title>
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

        <%
            int error = 0;
            int correo_igual = 0;
            if (request.getParameter("btnGuardar") != null) {
                logica_trabajador.estado = 1;
            }
            trabajador temp = new trabajador();
            logica_trabajador con = new logica_trabajador();

            login temp2 = new login();
            logica_login con2 = new logica_login();


        %>
        <%      if (logica_trabajador.estado == 1) {
                error = 0;
                correo_igual = 0;

                if (request.getParameter("txt_nombre") == null) {
                    // out.print("no hay nombre");
                    error++;

                } else {

                }

                if (request.getParameter("txt_apellido") == null) {
                    // out.print("no hay apellido");
                    error++;

                } else {

                }

                if (request.getParameter("sexo") == null) {
                    // out.print("no hay sexo");
                    error++;

                } else {

                }

                if (request.getParameter("nacimiento") == null) {
//  out.print("no hay nacimiento");
                    error++;

                } else {

                }

                if (request.getParameter("cmbtipoid") == null) {
                    // out.print("no hay tipo de identidad");
                    error++;

                } else {

                }

                if (request.getParameter("txt_numero") == null) {
//  out.print("no hay numero");
                    error++;

                } else {

                }

                if (request.getParameter("txt_telefono") == null) {
                    //out.print("no hay telefono");
                    error++;

                } else {

                }

                if (request.getParameter("cmbdistrito") == null) {
                    // out.print("no hay ndistrito");
                    error++;

                } else {

                }

                if (request.getParameter("txt_nomContacto") == null) {
                    // out.print("no hay contacto");
                    error++;

                } else {

                }

                if (request.getParameter("txt_telContacto") == null) {
                    //out.print("no hay telefono del contacto");
                    error++;

                } else {

                }

                if (request.getParameter("cmbpuesto") == null) {
                    //out.print("no hay puesto");
                    error++;

                } else {

                }

                if (request.getParameter("txt_correo") == null) {
                    //out.print("no hay correo");
                    error++;

                } else {

                    con2.validar_email();

                    for (int i = 0; i < logica_login.logica_login.size(); i++) {

                        temp2 = (login) logica_login.logica_login.get(i);

                        if (temp2.getLogin_correo().equals(request.getParameter("txt_correo"))) {
                            // out.print("hay correos iguales");
                            error++;
                            correo_igual++;
                        } else {

                        }

                    }

                }

                if (request.getParameter("txt_contra") == null) {
                    //out.print("no hay contrae");
                    error++;

                } else {

                }

                if (error == 0) {
                    out.print("si registro en la db");

                    temp = new trabajador(request.getParameter("txt_nombre"),
                            request.getParameter("txt_apellido"),
                            request.getParameter("sexo"),
                            request.getParameter("nacimiento"),
                            request.getParameter("cmbtipoid"),
                            request.getParameter("txt_numero"),
                            request.getParameter("txt_telefono"),
                            //   request.getParameter("txt_registro"),
                            Integer.parseInt(request.getParameter("cmbdistrito")),
                            request.getParameter("txt_nomContacto"),
                            request.getParameter("txt_telContacto"),
                            Integer.parseInt(request.getParameter("cmbpuesto")),
                            request.getParameter("txt_correo"),
                            request.getParameter("txt_contra")
                    );

                    con.insertar(temp);

                     response.sendRedirect("crud_trabajador.jsp");
                } else {

                }
            }

        %> 
        <%    //out.print(error);
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
                    <center>
                        <p class="h3" style="color: #CE6100"> <strong>Registro nuevo trabajador</strong></p> <br>


                    </center>
                </div>
            </div>
        </div>


        <br>

        <form action="" method="post" id="data">

            <div class="container">

                <div class="row">

                    <div class="col-6">
                        <%
                            if (request.getParameter("txt_nombre") == null) {
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
                            <input type="text" required="" name="txt_nombre" value="<%=request.getParameter("txt_nombre")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Nombres</strong></span>
                            </label>
                        </div>

                        <br>
                        <%
                            if (request.getParameter("sexo") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo sexo se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>
                        <p style="color: #CE6100"><strong>Sexo</strong></p>
                        <div>
                            <input type="radio" name="sexo" value="Femenino" /> <label style="color: #545b62">Femenino</label>
                            <input type="radio" name="sexo" value="Masculino"/> <label style="color: #545b62">Masculino</label>
                        </div>

                        <br>
                        <%
                            if (request.getParameter("cmbtipoid") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo tipo identidad se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>
                        <p style="color: #CE6100"><strong>Tipo de identidad</strong></p>
                        <select name="cmbtipoid" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>
                            <option value="DNI">DNI</option>
                            <option value="CARNET DE EXTRANJERIA">CARNET DE EXTRANJERIA</option>
                        </select>

                        <br>
                        <%
                            if (request.getParameter("txt_telefono") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo telefono se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>
                        <div class="form">
                            <input type="text" required="" name="txt_telefono" value="<%=request.getParameter("txt_telefono")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Telefono</strong></span>
                            </label>
                        </div>

                        <br>
                        <%
                            if (request.getParameter("cmbprovincia") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo provincia se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>
                        <p style="color: #CE6100"><strong>Provincia</strong></p>
                        <select name="cmbprovincia"  id="id_provi" onchange="comboDistri()" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>
                        </select>

                        <%
                            if (request.getParameter("txt_nomContacto") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo nombre del contacto se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>
                        <div class="form">
                            <input type="text" required="" name="txt_nomContacto" value="<%=request.getParameter("txt_nomContacto")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Contacto de emergencia</strong></span>
                            </label>
                        </div>


                        <br>
                        <%
                            if (request.getParameter("cmbpuesto") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo puesto se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>

                        <%  puesto temp4 = new puesto();
                            logica.logica_puesto con4 = new logica_puesto();
                            con4.consultar_puesto();
                        %>


                        <p style="color: #CE6100"><strong>Puesto</strong></p>
                        <select name="cmbpuesto" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>

                            <%
                                for (int i = 0; i < logica_puesto.logica_puesto.size(); i++) {
                                    temp4 = (puesto) logica_puesto.logica_puesto.get(i);

                            %>
                            <option value="<%=temp4.getPuesto_id()%>" ><%=temp4.getPuesto_nombre()%></option>

                            <%}%>

                        </select>




                        <%
                            if (request.getParameter("txt_contra") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo contraseña se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>    
                        <div class="form">
                            <input type="password" required="" name="txt_contra">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Contraseña</strong></span>
                            </label>
                        </div>
                    </div>


                    <%
                        if (request.getParameter("txt_apellido") == null) {
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
                    <div class="col-6" >
                        <div class="form">
                            <input type="text" required="" name="txt_apellido" value="<%=request.getParameter("txt_apellido")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Apellidos</strong></span>
                            </label>
                        </div>
                        <br>


                        <%
                            if (request.getParameter("nacimiento") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo fecha de nacimiento se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>
                        <p style="color: #CE6100"><strong>Fecha de nacimiento</strong></p>

                        <input type="date" required="" style="color: #545b62; width: 75%" class="form-control" name="nacimiento" value="<%=request.getParameter("nacimiento")%>">

                        <br>
                        <%
                            if (request.getParameter("txt_numero") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo numero se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>

                        <div class="form">
                            <input type="text" required="" name="txt_numero" value="<%=request.getParameter("txt_numero")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Numero</strong></span>
                            </label>
                        </div>

                        <br>
                        <%
                            if (request.getParameter("cmbdepartamento") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo departamento se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>

                        <%
                            departamento temp3 = new departamento();
                            logica.logica_departamento con3 = new logica_departamento();
                            con3.consultarDep();
                        %>

                        <p style="color: #CE6100"><strong>Departamento</strong></p>

                        <select name="cmbdepartamento" onchange="comboDep()" style="color: #545b62; width: 75%" class="form-control" >

                            <option value="">SELECCIONAR </option>

                            <%
                                for (int i = 0; i < logica_departamento.logica_departamento.size(); i++) {
                                    temp3 = (departamento) logica_departamento.logica_departamento.get(i);

                            %>
                            <option><%=temp3.getDesdep()%></option>

                            <%}%>

                        </select>


                        <br>
                        <%
                            if (request.getParameter("cmbdistrito") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo distrito se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>

                        <p style="color: #CE6100"><strong>Distrito</strong></p>
                        <select name="cmbdistrito" id="id_distri" onchange="comboFin()" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>
                        </select>





                        <%
                            if (request.getParameter("txt_telContacto") == null) {
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            El campo telefono de contacto se encuentra vacio 
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                            } else {
                            }
                        %>


                        <div class="form">
                            <input type="text" required="" name="txt_telContacto" value="<%=request.getParameter("txt_telContacto")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Telefono de contacto</strong></span>
                            </label>
                        </div>

                        <br>
                        <%
                            if (request.getParameter("txt_correo") == null) {
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
                            Este e-mail ya se encuentra registrado
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%
                                }

                            }
                        %>

                        <div class="form">
                            <input type="email" required="" name="txt_correo" value="<%=request.getParameter("txt_correo")%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Correo</strong></span>
                            </label>
                        </div>

                        <br>


                    </div>
                </div>

                <br>

            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <center>

                            <input type="submit" value="Guardar" name="btnGuardar" class="btn btn-outline-dark" style="background:  #F38500;"/>


                            <!--      <button type="button" class="btn btn-danger" >Cancelar</button> <br>-->

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
                        <a href="../Nosotros/Politica.jsp"style="color: #000" > POLITICA PRIVACIDA  </a>   
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
