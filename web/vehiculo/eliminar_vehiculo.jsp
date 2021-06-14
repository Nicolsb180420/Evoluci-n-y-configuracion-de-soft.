

<%@page import="logica.logica_vehiculo"%>
<%@page import="datos.vehiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%

            vehiculo temp = new vehiculo();
            logica_vehiculo con = new logica_vehiculo();
            int id_temp = Integer.parseInt(request.getParameter("id"));
            con.eliminar(id_temp);
            response.sendRedirect("lista_vehiculos.jsp");
        %>
    </body>
</html>
