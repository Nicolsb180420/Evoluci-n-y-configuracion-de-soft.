
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
            
            /*este proceso sirve para resetiar
            las variables globales en su estado 
            inicial haciendo que se cierre la sesion */
            
            
               HttpSession sesion = request.getSession();
                                sesion.setAttribute("cliente_id","NN");
                                sesion.setAttribute("cliente_nombre", "NN");
                                sesion.setAttribute("cliente_apellido", "NN");
                                
                                
                HttpSession sesion_trabajadro = request.getSession();
                           sesion_trabajadro.setAttribute("trabajador_id", "NN");
                                sesion_trabajadro.setAttribute("trabajador_nombre","NN");
                                sesion_trabajadro.setAttribute("trabajador_apellido", "NN");
                                sesion_trabajadro.setAttribute("trabajador_puesto", "NN");
                                
   request.getRequestDispatcher("../menu_principal/login.jsp").forward(request, response);    
        
        
        
        
        
        %>
        
        sesion_trabajadro
    </body>
</html>
