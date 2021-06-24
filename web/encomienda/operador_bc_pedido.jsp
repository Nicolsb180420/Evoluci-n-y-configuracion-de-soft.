<%-- 
    Document   : operador_bc_pedido
    Created on : 29/11/2020, 03:54:05 AM
    Author     : bryan
--%>

<%@page import="logica.logica_capsula_pedido"%>
<%@page import="datos.capsula_pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
         capsula_pedido temp = new capsula_pedido();
            logica_capsula_pedido con = new logica_capsula_pedido();
            
            int id_capsula_pedido;
      id_capsula_pedido= Integer.parseInt(request.getParameter("id")) ;
        con.eliminar(id_capsula_pedido);
        
        response.sendRedirect("registrar_encomienda.jsp");
        %>
     
        
        
    </body>
</html>
