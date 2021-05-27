
<%@page import="datos.carrito"%>
<%@page import="logica.logica_carrito"%>
<%@page import="datos.lista_deseos"%>
<%@page import="logica.logica_lista_deseos"%>
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
        
          if (request.getParameter("lista_deseos").equals("ingresar")) {
              
              
                logica_lista_deseos.estado = 1;
            }else if(request.getParameter("lista_deseos").equals("quitar")){
                 logica_lista_deseos.estado = 2;
                
            }else{
                
            }
          
    //      out.print(request.getParameter("agregar_carrito"));
          
       /*
          if(request.getParameter("agregar_carrito").equals("agregar")){
              logica_carrito.estado=1;
          }
        
          */
          
          lista_deseos temp = new lista_deseos();
            logica_lista_deseos con = new logica_lista_deseos();
            
         


            if(logica_lista_deseos.estado == 1){
                temp = new lista_deseos(
                         Integer.parseInt(request.getParameter("id_cliente"))   ,
                            Integer.parseInt(request.getParameter("id_producto"))
                           
                    );

                    con.insertar(temp);
              logica_lista_deseos.estado = 0;
                  request.getRequestDispatcher("producto.jsp?id="+ Integer.parseInt(request.getParameter("id_producto"))).forward(request, response); 
            }else{
                
            }
            
            
            

              if(logica_lista_deseos.estado == 2){
                
                int id_lista_deseos=Integer.parseInt(request.getParameter("id_lista_deseos"));

                    con.eliminar(id_lista_deseos);
                    
              logica_lista_deseos.estado = 0;
                  request.getRequestDispatcher("producto.jsp?id="+ Integer.parseInt(request.getParameter("id_producto"))).forward(request, response); 
            }else{
                  
              }
      
              
              
              
/*
    
            
               if( logica_carrito.estado==1){
                  
                  
                  out.print("hola");
               
                   c = new carrito(
                         Integer.parseInt(request.getParameter("id_cliente")),
                            Integer.parseInt(request.getParameter("id_producto")),
                           Integer.parseInt(request.getParameter("cantidad"))
                    );

                   
                    conc.insertar(c);
                  
                  
              }else{
                  
              }
*/

              
        
        %>

    </body>
</html>
