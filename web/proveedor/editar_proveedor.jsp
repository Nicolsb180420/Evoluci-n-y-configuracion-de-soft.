
<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page import="datos.departamento"%>
<%@page import="logica.logica_departamento"%>
<%@page import="logica.logica_proveedor"%>
<%@page import="datos.proveedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Actualizar proveedor</title>
        
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

                //out.print(cliente_id);
                categoria temp1 = new categoria();
                logica.logica_categoria con1 = new logica_categoria();
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

        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <p class="h3" style="color: #CE6100"> <strong>Actualizar proveedor</strong></p> <br>
                    </center>
                </div>
            </div>
        </div>


        <form action="estados_proveedor.jsp" method="post" id="data">
            
            <%
                proveedor temp = new proveedor();
                logica_proveedor con = new logica_proveedor();
                int id_temp = Integer.parseInt(request.getParameter("id"));
                String razonSocial = null, ruc = null, distrito = null, direccion = null,email = null, telefono=null,fecha=null;

                con.consultar();
                for (int i = 0; i < logica_proveedor.Lproveedores.size(); i++) {
                    temp = (proveedor) logica_proveedor.Lproveedores.get(i);
                    if (id_temp == temp.getProveedor_id()) {
                        razonSocial = temp.getProveedor_razon_social();
                        ruc = temp.getProveedor_ruc();
                        distrito = temp.getDesdist();
                        direccion = temp.getProveedor_direccion();
                        email = temp.getProveedor_email();
                        telefono = temp.getProveedor_telefono();
                        fecha = temp.getProveedor_fecha_registro();
                    }
                }%>
            
            <div class="container">
                <div class="row">

                    <div class="col-6">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" >ID</span>
                            </div>
                            <input type="text" class="form-control" placeholder="Codigo" name="txtid" value="<%=id_temp%>" required="">
                        </div>
                        
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Razon Social</span>
                            </div>
                            <input type="text" class="form-control" placeholder="Razon social" name="txtrazonsocial" value="<%=razonSocial%>" required="">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">RUC</span>
                            </div>
                            <input type="text" class="form-control" placeholder="Ruc" name="txtruc" maxlength="11" value="<%=ruc%>" required="">
                        </div>
     
                        
                        <%
                            departamento temp2 = new departamento();
                            logica.logica_departamento con2 = new logica_departamento();
                            con2.consultarDep();
                        %>

                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Departamento</span>
                            </div>
                            <select name="cmbdepartamento" onchange="comboDep()" style="color: #545b62; width: 75%" class="form-control" required="">

                                <option value="">SELECCIONAR </option>

                                <%
                                    for (int i = 0; i < logica_departamento.logica_departamento.size(); i++) {
                                        temp2 = (departamento) logica_departamento.logica_departamento.get(i);

                                %>
                                <option><%=temp2.getDesdep()%></option>

                                <%}%>

                            </select>
                        </div>


                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Provincia</span>
                            </div>     
                            <select name="cmbprovincia"  id="id_provi" onchange="comboDistri()" style="color: #545b62; width: 75%" class="form-control" required="" >
                                <option value="">SELECCIONAR </option>
                            </select>
                        </div>


                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Distrito</span>
                            </div>     
                            <select name="cmbdistrito" id="id_distri" onchange="comboFin()" style="color: #545b62; width: 75%" class="form-control" required="">
                                <option value="">SELECCIONAR </option>
                            </select>
                        </div>
                        
                    </div>
                    <div class="col-6">
                        <div class="row">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Direccion</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Direccion" name="txtdireccion" value="<%=direccion%>" required="">
                            </div>
                            
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">E-mail</span>
                                </div>
                                <input type="email" class="form-control" placeholder="E-mail" name="txtemail" value="<%=email%>" required="">
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Telefono</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Telefono" name="txttelefono" maxlength="9" value="<%=telefono%>" required="">
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Fecha de registro</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Telefono" name="txttelefono" maxlength="9" value="<%=fecha%>" disabled="" required="">
                            </div>
                        </div>
                        
                        <div class="row">
                            <center>
                                <input type="submit" class="btn" style="background: #CE6100; color: #ffffff" name="btnActualizar" value="Actualizar" />
                               <!--  <input type="submit" class="btn btn-danger" name="" value="Cancelar" /> -->
                            </center>
                        </div>
   
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
