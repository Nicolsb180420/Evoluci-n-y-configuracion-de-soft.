<%-- 
    Document   : agregar_pedido
    Created on : 28/11/2020, 05:36:24 PM
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
        <%
            int trabajador_id;
            int id_pedido;
        HttpSession sesion_trabajadro = request.getSession();
        
                trabajador_id =Integer.parseInt(sesion_trabajadro.getAttribute("trabajador_id").toString());
                
                id_pedido=Integer.parseInt(request.getParameter("id"));
                
             //   out.print(trabajador_id+"<br>");
               //    out.print(id_repartidor);
                
                  capsula_pedido temp = new capsula_pedido();
            logica_capsula_pedido con = new logica_capsula_pedido();
            
  temp = new capsula_pedido(id_pedido, trabajador_id);
con.insertar(temp);
response.sendRedirect("registrar_encomienda.jsp");
        %>
    </body>
</html>
