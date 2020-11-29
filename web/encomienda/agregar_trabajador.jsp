<%-- 
    Document   : agregar trabajador
    Created on : 28/11/2020, 04:12:26 PM
    Author     : bryan
--%>

<%@page import="logica.logica_capsula_trabajador"%>
<%@page import="datos.capsula_trabajador"%>
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
            int id_repartidor;
        HttpSession sesion_trabajadro = request.getSession();
        
                trabajador_id =Integer.parseInt(sesion_trabajadro.getAttribute("trabajador_id").toString());
                
                id_repartidor=Integer.parseInt(request.getParameter("id"));
                
             //   out.print(trabajador_id+"<br>");
               //    out.print(id_repartidor);
                
                  capsula_trabajador temp = new capsula_trabajador();
            logica_capsula_trabajador con = new logica_capsula_trabajador();
            
  temp = new capsula_trabajador(trabajador_id, id_repartidor);
con.insertar(temp);
response.sendRedirect("registrar_encomienda.jsp");
        %>
     
        <h1>Hello World!</h1>
    </body>
</html>
