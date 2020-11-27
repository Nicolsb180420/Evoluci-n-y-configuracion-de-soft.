<%-- 
    Document   : eliminar_trabajador
    Created on : 24/11/2020, 06:23:18 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_trabajador"%>
<%@page import="datos.trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%

            trabajador temp = new trabajador();
            logica_trabajador con = new logica_trabajador();
            int id_temp = Integer.parseInt(request.getParameter("id"));
            con.eliminar(id_temp);
            response.sendRedirect("crud_trabajador.jsp");
        %>
    </body>
</html>
