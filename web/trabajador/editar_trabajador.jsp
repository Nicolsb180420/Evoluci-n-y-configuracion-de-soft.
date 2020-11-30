<%-- 
    Document   : editar_trabajador
    Created on : 24/11/2020, 06:23:30 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page import="logica.logica_departamento"%>
<%@page import="datos.departamento"%>
<%@page import="datos.puesto"%>
<%@page import="logica.logica_puesto"%>
<%@page import="logica.logica_trabajador"%>
<%@page import="datos.trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Actualizar trabajador</title>
        
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
        <div class="container-fluid">
            <%
                String cliente_id;
                HttpSession sesion_trabajadro = request.getSession();
                cliente_id = sesion_trabajadro.getAttribute("trabajador_id").toString();
                String puesto = sesion_trabajadro.getAttribute("trabajador_puesto").toString();

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


        <!--  000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000                -->


        <div class="container">
            <%
                trabajador temp = new trabajador();
                logica_trabajador con = new logica_trabajador();
                int id_temp = Integer.parseInt(request.getParameter("id"));

                con.consultar();

                String nombre = null, apellido = null, sexo = null, fechanac = null, tipident = null,
                        numident = null, telefono = null, contacto = null, telcontacto = null, puesto = null, ingreso = null,
                        correo = null, contra = null;
                int login_id;

                for (int i = 0; i < logica_trabajador.logica_trabajador.size(); i++) {
                    temp = (trabajador) logica_trabajador.logica_trabajador.get(i);
                    if (id_temp == temp.getTrabajador_id()) {
                        nombre = temp.getTrabajador_nombre();
                        apellido = temp.getTrabajor_apellido();
                        sexo = temp.getTrabajador_sexo();
                        fechanac = temp.getTrabajador_nacimiento();
                        tipident = temp.getTrabajador_tipo_identidad();
                        numident = temp.getTrabajador_numero_identidad();
                        telefono = temp.getTrabajador_telefono();
                        contacto = temp.getTrabajador_contacto();
                        telcontacto = temp.getTrabajador_contacto_telefono();
                        puesto = temp.getPuesto_nombre();
                        ingreso = temp.getTrabajador_dia();
                        login_id = temp.getLogin_id();
                        correo = temp.getLogin_correo();
                        contra = temp.getLogin_contra();
                    }
                }%>



            <div class="row">
                <div class="col-12">
                    <center>
                        <p class="h3" style="color: #CE6100"> <strong>Actualizacion de datos</strong></p> <br>


                    </center>
                </div>
            </div>
        </div>


        <br>

        <form action="estado_trabajador_edit.jsp" method="post" id="data">

            <div class="container">


                <div class="row">
                    
                    <div class="col-6">
                        <div class="form">
                            <input type="text" required="" name="txt_id" value="<%=id_temp%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Codigo</strong></span>
                            </label>
                        </div>
                            
                        <div class="form">
                            <input type="text" required="" name="txt_nombre" value="<%=nombre%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Nombres</strong></span>
                            </label>
                        </div>

                        <br>
                        <p style="color: #CE6100"><strong>Sexo</strong></p>
                        <div>
                            <input type="radio" name="sexo" value="Femenino" /> <label style="color: #545b62">Femenino</label>
                            <input type="radio" name="sexo" value="Masculino"/> <label style="color: #545b62">Masculino</label>
                        </div>

                        <br>
                        <p style="color: #CE6100"><strong>Tipo de identidad</strong></p>
                        <select name="cmbtipoid" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>
                            <option value="DNI">DNI</option>
                            <option value="CARNET DE EXTRANJERIA">CARNET DE EXTRANJERIA</option>
                        </select>

                        <br>
                        <div class="form">
                            <input type="text" required="" name="txt_telefono" value="<%=telefono%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Telefono</strong></span>
                            </label>
                        </div>

                        <p style="color: #CE6100"><strong>Provincia</strong></p>


                        <select name="cmbprovincia"  id="id_provi" onchange="comboDistri()" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>
                        </select>


                        <div class="form">
                            <input type="text" required="" name="txt_nomContacto" value="<%=contacto%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Contacto de emergencia</strong></span>
                            </label>
                        </div>


                        <br>

                        <%  puesto temp1 = new puesto();
                            logica.logica_puesto con1 = new logica_puesto();
                            con1.consultar_puesto();
                        %>


                        <p style="color: #CE6100"><strong>Puesto</strong></p>
                        <select name="cmbpuesto" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>

                            <%
                                for (int i = 0; i < logica_puesto.logica_puesto.size(); i++) {
                                    temp1 = (puesto) logica_puesto.logica_puesto.get(i);

                            %>
                            <option value="<%=temp1.getPuesto_id()%>" ><%=temp1.getPuesto_nombre()%></option>

                            <%}%>

                        </select>
                    </div>
                    <div class="col-6" >
                        <div class="form">
                            <input type="text" required="" name="txt_apellido" value="<%=apellido%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Apellidos</strong></span>
                            </label>
                        </div>
                        <br>

                        <p style="color: #CE6100"><strong>Fecha de nacimiento</strong></p>

                        <input type="date" required="" style="color: #545b62; width: 75%" class="form-control" name="nacimiento" value="<%=fechanac%>">

                        <br>
                        <div class="form">
                            <input type="text" required="" name="txt_numero" value="<%=numident%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Numero</strong></span>
                            </label>
                        </div>

                        <br>

                        <%
                            departamento temp2 = new departamento();
                            logica.logica_departamento con2 = new logica_departamento();
                            con2.consultarDep();
                        %>

                        <p style="color: #CE6100"><strong>Departamento</strong></p>

                        <select name="cmbdepartamento" onchange="comboDep()" style="color: #545b62; width: 75%" class="form-control" >

                            <option value="">SELECCIONAR </option>

                            <%
                                for (int i = 0; i < logica_departamento.logica_departamento.size(); i++) {
                                    temp2 = (departamento) logica_departamento.logica_departamento.get(i);

                            %>
                            <option><%=temp2.getDesdep()%></option>

                            <%}%>

                        </select>


                        <br>

                        <p style="color: #CE6100"><strong>Distrito</strong></p>
                        <select name="cmbdistrito" id="id_distri" onchange="comboFin()" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>
                        </select>


                        <div class="form">
                            <input type="text" required="" name="txt_telContacto" value="<%=telcontacto%>">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Telefono de contacto</strong></span>
                            </label>
                        </div>



                    </div>
                </div>

                <br>

            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <center>

                            <input type="submit" value="Actualizar" name="btnActualizar" class="btn btn-outline-dark" style="background:  #F38500;"/>


                            <!--      <button type="button" class="btn btn-danger" >Cancelar</button> <br>-->

                        </center>
                    </div>
                </div>
            </div> 

        </form>

        <br><br>

        
    </body>
</html>

