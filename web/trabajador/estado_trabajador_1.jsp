
<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
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
            <%
                String cliente_id;
                HttpSession sesion_trabajadro = request.getSession();
                cliente_id = sesion_trabajadro.getAttribute("trabajador_id").toString();
                String puesto = sesion_trabajadro.getAttribute("trabajador_puesto").toString();

              
            %>


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

        <%
            }
        %>  


    </body> 
</html>
