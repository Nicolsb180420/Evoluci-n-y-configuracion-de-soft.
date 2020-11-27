<%-- 
    Document   : estados_vehiculo
    Created on : 20/11/2020, 03:26:25 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="datos.vehiculo"%>
<%@page import="logica.logica_vehiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("btnGuardar") != null) {
                logica_vehiculo.estado = 1;
            }
            if (request.getParameter("btnActualizar") != null) {
                logica_vehiculo.estado = 2;
            }
        %>
        <%
            vehiculo temp = new vehiculo();
            logica_vehiculo con = new logica_vehiculo();

            if (logica_vehiculo.estado == 1) {

                temp = new vehiculo(request.getParameter("txtplaca"),
                        request.getParameter("txtmarca"),
                        request.getParameter("txtmodelo"),
                        request.getParameter("txtcarga"),
                        request.getParameter("txtregistro")
                );

                con.insertar(temp);
                response.sendRedirect("lista_vehiculos.jsp");

            }
           if (logica_vehiculo.estado == 2) {

                temp = new vehiculo(
                        Integer.parseInt(request.getParameter("txtid")),
                        request.getParameter("txtplaca"),
                        request.getParameter("txtmarca"),
                        request.getParameter("txtmodelo"),
                        request.getParameter("txtcarga"),
                        request.getParameter("txtregistro")
                );
                con.actualizar(temp);
               response.sendRedirect("lista_vehiculos.jsp");
              /* out.print(Integer.parseInt(request.getParameter("txtid")));
               out.print(request.getParameter("txtplaca"));
               out.print(request.getParameter("txtmarca"));
               out.print(request.getParameter("txtmodelo"));
               out.print(request.getParameter("txtcarga"));
               out.print(request.getParameter("txtregistro"));*/

            }


        %> 
    </body> 
</html>
