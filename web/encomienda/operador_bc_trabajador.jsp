
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
          
        capsula_trabajador temp = new capsula_trabajador();
            logica_capsula_trabajador con = new logica_capsula_trabajador();
          
       int id_capsula_trabajador;
      id_capsula_trabajador= Integer.parseInt(request.getParameter("id")) ;
       out.print(id_capsula_trabajador);
      con.eliminar(id_capsula_trabajador);
             response.sendRedirect("registrar_encomienda.jsp");
      %>
        
        
        
        
    </body>
</html>
