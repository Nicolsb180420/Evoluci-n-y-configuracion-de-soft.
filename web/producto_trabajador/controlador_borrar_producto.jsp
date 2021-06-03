

<%@page import="logica.logica_producto"%>
<%@page import="datos.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        
       <%
        int capsula = Integer.parseInt(request.getParameter("id"));
        
         producto p = new producto();
            logica.logica_producto con = new logica_producto();
            

con.borrar(capsula);
      response.sendRedirect("crud_producto.jsp");
       
       %>
        
       
        
    </body>
</html>
