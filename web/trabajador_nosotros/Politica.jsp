
<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page import="logica.logica_carrito"%>
<%@page import="datos.carrito"%>
<%
    String correo = request.getParameter("correo");
    String contra = request.getParameter("contra");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Politica de privacidad</title>
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
        <%--  categoria--%>



        <script src="../diceno/js/jquery-2.2.0.min.js" type="text/javascript"></script>
      
        <link href="../diceno/css/navbar-top-fixed.css" rel="stylesheet">     

        <%--caja de texto--%>

        <link rel="stylesheet" href="../diceno/css/caja_text.css">
        <link rel="stylesheet" href="../diceno/css/estilos.css">

        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    </head>

    <%--menu despegable--%>   



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
        <div class="container">
            <div class="row">
                <div class="col-12">

                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                        <div class="card">
                            <div class="card-body">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="https://kazvel.com/wp-content/uploads/2019/09/politica-de-privacidad-banner.jpg" width="1500" height="100" class="d-block w-100" alt="...">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h2>Razón Social:</h2>
                            <p><strong>Empresa:</strong> Quimica Kazvel S.A.C.</p>
                            <h2><strong>POLÍTICA DE PRIVACIDAD</strong></h2>
                            <div class="card">
                                <p>El presente Política de Privacidad establece los términos en que&nbsp;<strong>Quimica Kazvel S.A.C.</strong>&nbsp;usa y protege la información que es proporcionada por sus usuarios al momento de utilizar su sitio web. Esta compañía está comprometida con la seguridad de los datos de sus usuarios. Cuando le pedimos llenar los campos de información personal con la cual usted pueda ser identificado, lo hacemos asegurando que sólo se empleará de acuerdo con los términos de este documento.</p>
                                <p>Sin embargo esta Política de Privacidad puede cambiar con el tiempo o ser actualizada por lo que le recomendamos y enfatizamos revisar continuamente esta página para asegurarse que está de acuerdo con dichos cambios.</p>
                            </div>
                            <h3><strong>Información que es recogida</strong></h3>
                            <div class="card">
                                <p>Nuestro sitio web podrá recoger información personal por ejemplo: Nombre,&nbsp; información de contacto como&nbsp; su dirección de correo electrónica e información demográfica. Así mismo cuando sea necesario podrá ser requerida información específica para procesar algún pedido o realizar una entrega o facturación.</p> 
                            </div>
                            <h3>Cookies</h3>
                            <div class="card">
                                <p>Una cookie se refiere a un fichero que es enviado con la finalidad de solicitar permiso para almacenarse en su ordenador, al aceptar dicho fichero se crea y la cookie sirve entonces para tener información respecto al tráfico web, y también facilita las futuras visitas a una web recurrente. Otra función que tienen las cookies es que con ellas las web pueden reconocerte individualmente y por tanto brindarte el mejor servicio personalizado de su web.</p>
                                <p>Nuestro sitio web emplea las cookies para poder identificar las páginas que son visitadas y su frecuencia. Esta información es empleada únicamente para análisis estadístico y después la información se elimina de forma permanente. Usted puede eliminar las cookies en cualquier momento desde su ordenador. Sin embargo las cookies ayudan a proporcionar un mejor servicio de los sitios web, estás no dan acceso a información de su ordenador ni de usted, a menos de que usted así lo quiera y la proporcione directamente, Usted puede aceptar o negar el uso de cookies, sin embargo la mayoría de navegadores aceptan cookies automáticamente pues sirve para tener un mejor servicio web.</p>
                                <p>También usted puede cambiar la configuración de su ordenador para declinar las cookies. Si se declinan es posible que no pueda utilizar algunos de nuestros servicios.</p>
                            </div>
                            <h3><strong>Enlaces a Terceros</strong></h3>
                            <div class="card">
                                <p>Este sitio web pudiera contener en laces a otros sitios que pudieran ser de su interés. Una vez que usted de clic en estos enlaces y abandone nuestra página, ya no tenemos control sobre al sitio al que es redirigido y por lo tanto no somos responsables de los términos o privacidad ni de la protección de sus datos en esos otros sitios terceros. Dichos sitios están sujetos a sus propias políticas de privacidad por lo cual es recomendable que los consulte para confirmar que usted está de acuerdo con estas.</p>
                            </div>
                            <h2><strong>Control de su información personal</strong></h2>
                            <div class="card">
                                <p>En cualquier momento usted puede restringir la recopilación o el uso de la información personal que es proporcionada a nuestro sitio web.&nbsp; Cada vez que se le solicite rellenar un formulario, como el de alta de usuario, puede marcar o desmarcar la opción de recibir información por correo electrónico. &nbsp;En caso de que haya marcado la opción de recibir nuestro boletín o publicidad usted puede cancelarla en cualquier momento.</p>
                                <p class="politica"><strong>Quimica Kazvel S.A.C.</strong>&nbsp;Se reserva el derecho de cambiar los términos de la presente Política de Privacidad en cualquier momento.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>



        <br><br><br>


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
                            <a href="Preguntas.jsp" style="color: #000">PREGUNTAS FRECUENTES</a> 

                            <br>
                            <a href="Politica.jsp"style="color: #000" > POLITICA PRIVACIDAD  </a>   
                            <br>

                            <a href="contacto.jsp"style="color: #000">CONTACTANOS</a> 

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