<%-- 
    Document   : cambiar_estado
    Created on : 27/11/2020, 11:05:00 PM
    Author     : Nicol Samanamud 
--%>


<%@page import="datos.encomienda"%>
<%@page import="logica.logica_encomienda"%>
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
                logica_encomienda.estado = 1;
            }
            if (request.getParameter("cambiar_estado").equals("1")) {
                logica_encomienda.estado = 2;
            }
            int id_encomienda = Integer.parseInt(request.getParameter("id_encomienda"));
            int id_vehiculo = Integer.parseInt(request.getParameter("id_vehiculo"));
            encomienda temp = new encomienda();
            logica_encomienda con = new logica_encomienda();
            
          

            if (logica_encomienda.estado == 1) {
                out.print("estado apagado");

                temp = new encomienda(id_encomienda, 1);
            
                con.actualizar_estado(temp);
             
               response.sendRedirect("reporte_encomienda.jsp");
            }

            if (logica_encomienda.estado == 2) {
                out.print("estado prendido");
                temp = new encomienda(id_encomienda, 0);
                con.actualizar_estado(temp);
               response.sendRedirect("reporte_encomienda.jsp");

            }


        %>




    </body>
</html>
