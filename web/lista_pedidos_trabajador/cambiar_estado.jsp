<%-- 
    Document   : cambiar_estado
    Created on : 27/11/2020, 11:05:00 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="datos.pedido"%>
<%@page import="logica.logica_pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           
        if (request.getParameter("cambiar_estado").equals("0")) {
                logica_pedido.estado = 1;
            }
            if (request.getParameter("cambiar_estado").equals("1")) {
                logica_pedido.estado = 2;
            }
         int id_pedido= Integer.parseInt(request.getParameter("id_pedido")); 
    pedido temp = new pedido();
            logica_pedido con = new logica_pedido();
            
             if (logica_pedido.estado == 1) {
                 out.print("estado apagado");
                 
                temp = new pedido(id_pedido, 1);  
                 con.actualizar_estado(temp);
             response.sendRedirect("Lista_pedidos_completos.jsp");
             }
             
             if (logica_pedido.estado == 2) {
             out.print("estado prendido");
              temp = new pedido(id_pedido, 0); 
              con.actualizar_estado(temp);
             response.sendRedirect("Lista_pedidos_completos.jsp");
             
             }
       

       %>
        
        
        
        
    </body>
</html>
