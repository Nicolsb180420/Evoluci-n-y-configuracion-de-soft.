

<%@page import="datos.cliente"%>
<%@page import="logica.logica_cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("btnGuardar") != null) {
                logica_cliente.estado = 1;
            }
            cliente temp = new cliente();
            logica_cliente con = new logica_cliente();

        %>
        
        <%
            
            
            
            
            
            

            if (logica_cliente.estado == 1) {
         
                    temp = new cliente(request.getParameter("txtnombre"),
                        request.getParameter("txtapellido"),
                        request.getParameter("txtfecha"),
                        request.getParameter("txtemail"),
                        request.getParameter("txtcontrasena1")        
                );

                con.insertar(temp);
                
               // response.sendRedirect("Registrar usuario.jsp");
               
                
                
                
                
               
            }
            



            
        %> 
    </body>
</html>

