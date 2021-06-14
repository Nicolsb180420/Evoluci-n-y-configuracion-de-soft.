
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
