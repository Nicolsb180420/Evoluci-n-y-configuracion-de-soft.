<%-- 
    Document   : login_cerrar
    Created on : 23/11/2020, 12:14:20 AM
    Author     : bryan
--%>

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
            
               HttpSession sesion = request.getSession();
                                sesion.setAttribute("cliente_id","NN");
                                sesion.setAttribute("cliente_nombre", "NN");
                                sesion.setAttribute("cliente_apellido", "NN");
   request.getRequestDispatcher("../menu_principal/login.jsp").forward(request, response);    
        
        
        
        
        
        %>
        
        
    </body>
</html>
