<%-- 
    Document   : login_controlador
    Created on : 22/11/2020, 09:44:56 AM
    Author     : bryan
--%>

<%@page import="logica.logica_cliente"%>
<%@page import="logica.logica_login"%>
<%@page import="datos.cliente"%>
<%@page import="datos.login"%>
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
         login temp = new login();
            logica.logica_login con = new logica_login();
            
            cliente temp2 = new cliente();
            logica.logica_cliente con2 = new logica_cliente();
            
            String correo = request.getParameter("correo");
            String contra = request.getParameter("contra");
            
            con.buscar_email(correo, contra);
            for (int i = 0; i < logica_login.logica_login.size(); i++) {
                temp = (login) logica_login.logica_login.get(i);
                
            }
        
 if (temp.getLogin_id() == 0) {
    // out.print("holi");
     HttpSession sesion = request.getSession();
                                sesion.setAttribute("cliente_id","NN");
                                sesion.setAttribute("cliente_nombre", "NN");
                                sesion.setAttribute("cliente_apellido", "NN");
   request.getRequestDispatcher("../menu_principal/login.jsp?accion=no").forward(request, response);    
      
 
 }else {
     
     con2.buscar_cliente(temp.getLogin_id());
                                for (int i = 0; i < logica_cliente.logica_cliente.size(); i++) {
                                    temp2 = (cliente) logica_cliente.logica_cliente.get(i);
                                    
                                }
                                HttpSession sesion = request.getSession();
                                sesion.setAttribute("cliente_id", temp2.getCliente_id());
                                sesion.setAttribute("cliente_nombre", temp2.getCliente_nombre());
                                sesion.setAttribute("cliente_apellido", temp2.getCliente_apellido());
                                
        request.getRequestDispatcher("../menu_principal/login.jsp?accion=si").forward(request, response);                            
                              
                                
 }



        
        
        %>
        
      
    </body>
</html>
