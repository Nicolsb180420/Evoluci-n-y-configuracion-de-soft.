<%-- 
    Document   : eliminar_proveedor
    Created on : 24/11/2020, 10:51:02 AM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_proveedor"%>
<%@page import="datos.proveedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%

            proveedor temp = new proveedor();
            logica_proveedor con = new logica_proveedor();
            int id_temp = Integer.parseInt(request.getParameter("id"));
            con.eliminar(id_temp);
           response.sendRedirect("crud_proveedor.jsp");
        %>
    </body>
</html>
