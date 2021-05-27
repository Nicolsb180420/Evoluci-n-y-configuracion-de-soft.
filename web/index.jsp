
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      

        
    </head>
    <body>
       <%
           
              HttpSession sesion = request.getSession();
                                sesion.setAttribute("cliente_id","NN");
                                sesion.setAttribute("cliente_nombre", "NN");
                                sesion.setAttribute("cliente_apellido", "NN");
                        
             //      request.getRequestDispatcher("menu_principal/login.jsp?accion=0").forward(request, response);            
                    response.sendRedirect("menu_principal/login.jsp");
       
       %>


    </body>
</html>
