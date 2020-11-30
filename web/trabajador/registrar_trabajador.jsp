<%-- 
    Document   : registrar_trabajador
    Created on : 10/11/2020, 09:38:03 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page import="logica.logica_puesto"%>
<%@page import="datos.puesto"%>
<%@page import="logica.logica_departamento"%>
<%@page import="datos.departamento"%>
<%
    String validacion;

%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
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


        <!--  000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000                -->


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

        <form action="estado_trabajador_1.jsp" method="post" id="data">

            <div class="container">





                <div class="row">






                    <div class="col-6">
                        <div class="form">
                            <input type="text" required="" name="txt_nombre">
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
                            <input type="text" required="" name="txt_telefono">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Telefono</strong></span>
                            </label>
                        </div>

                        <br>

                        <p style="color: #CE6100"><strong>Provincia</strong></p>


                        <select name="cmbprovincia"  id="id_provi" onchange="comboDistri()" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>



                        </select>


                        <div class="form">
                            <input type="text" required="" name="txt_nomContacto">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Contacto de emergencia</strong></span>
                            </label>
                        </div>


                        <br>

                        <%                             puesto temp1 = new puesto();
                            logica.logica_puesto con1 = new logica_puesto();
                            con1.consultar_puesto();
                        %>


                        <p style="color: #CE6100"><strong>Puesto</strong></p>
                        <select name="cmbpuesto" style="color: #545b62; width: 75%" class="form-control" >
                            <option value="">SELECCIONAR </option>

                            <%
                                for (int i = 0; i < logica_puesto.logica_puesto.size(); i++) {
                                    temp1 = (puesto) logica_puesto.logica_puesto.get(i);
                                    if(temp1.getPuesto_id()<6){
                            %>
                            <option value="<%=temp1.getPuesto_id()%>" ><%=temp1.getPuesto_nombre()%></option>

                            <%}}%>

                        </select>





                        <div class="form">
                            <input type="password" required="" name="txt_contra">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Contraseña</strong></span>
                            </label>
                        </div>
                    </div>


                    <div class="col-6" >
                        <div class="form">
                            <input type="text" required="" name="txt_apellido">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Apellidos</strong></span>
                            </label>
                        </div>
                        <br>

                        <p style="color: #CE6100"><strong>Fecha de nacimiento</strong></p>

                        <input type="date" required="" style="color: #545b62; width: 75%" class="form-control" name="nacimiento">

                        <br>
                        <div class="form">
                            <input type="text" required="" name="txt_numero">
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
                            <input type="text" required="" name="txt_telContacto">
                            <label class="lbl-nombre">
                                <span class="text-nomb"><strong>Telefono de contacto</strong></span>
                            </label>
                        </div>

                        <br>
                        <div class="form">
                            <input type="email" required="" name="txt_correo">
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
    </body>
</html>
