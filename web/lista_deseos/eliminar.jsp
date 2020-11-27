<%-- 
    Document   : eliminar
    Created on : 27/11/2020, 02:22:04 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_lista_deseos"%>
<%@page import="datos.lista_deseos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            lista_deseos temp = new lista_deseos();
            logica_lista_deseos con = new logica_lista_deseos();
            int id_temp = Integer.parseInt(request.getParameter("id"));
            con.eliminar(id_temp);
            response.sendRedirect("lista_deseos.jsp");
        %>
    </body>
</html>
