
<%@page import="datos.comentario"%>
<%@page import="logica.logica_comentario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 
        
        <%
        
        if (request.getParameter("agregar_comentario").equals("agregar")) {
              
              
                logica_comentario.estado = 1;
            }else if(request.getParameter("agregar_comentario").equals("borrar")){
                logica_comentario.estado = 2;
            }else{
                
            }
        
        
        
        
          comentario temp = new comentario();
            logica_comentario con = new logica_comentario();
            
        
 if(logica_comentario.estado == 1){
     /*out.print("hola amigo"+"<br>");
     out.print(Integer.parseInt(request.getParameter("id_producto"))+"<br>");
      out.print(Integer.parseInt(request.getParameter("id_cliente"))+"<br>");
       out.print(request.getParameter("comentario")+"<br>" );
     
     */
                temp = new comentario(
                       
                        Integer.parseInt(request.getParameter("id_producto")),
                         Integer.parseInt(request.getParameter("id_cliente")),
                           request.getParameter("comentario") 
                           
                    );

                    con.insertar(temp);
              logica_comentario.estado = 0;
             
                  request.getRequestDispatcher("producto.jsp?id="+ Integer.parseInt(request.getParameter("id_producto"))).forward(request, response); 
                  
            }else{
                
            }
 

 if(logica_comentario.estado == 2){
        int id_comentario=Integer.parseInt(request.getParameter("id_comentario"));

                    con.eliminar(id_comentario);
                    
              logica_comentario.estado = 0;
                   request.getRequestDispatcher("producto.jsp?id="+ Integer.parseInt(request.getParameter("id_producto"))).forward(request, response); 
 
 }else{
     
 }
 

        %>
    </body>
</html>
