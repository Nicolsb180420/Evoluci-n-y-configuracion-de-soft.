<%-- 
    Document   : eliminar_pedido
    Created on : 27/11/2020, 06:47:08 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_pedido"%>
<%@page import="datos.pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%

            pedido temp = new pedido();
            logica_pedido con = new logica_pedido();
            int id_temp = Integer.parseInt(request.getParameter("id"));
            con.eliminar(id_temp);
           response.sendRedirect("lista_solicitud.jsp");
        %>
    </body>
</html>
