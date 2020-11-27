<%-- 
    Document   : controlador_carrito
    Created on : 24/11/2020, 01:56:26 AM
    Author     : bryan
--%>

<%@page import="datos.carrito"%>
<%@page import="logica.logica_carrito"%>
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
            int aumento=0;
        
            
            
            
         if(request.getParameter("agregar_carrito").equals("agregar")){
              logica_carrito.estado=1;
          }
         
         
            carrito c = new carrito();
            logica_carrito conc = new logica_carrito();
            
            
            
        
               if( logica_carrito.estado==1){
                  
                   int id_cliente=Integer.parseInt(request.getParameter("id_cliente"));
                   int id_producto =  Integer.parseInt(request.getParameter("id_producto"));
                   
                   
                   
                  conc.validar(id_cliente,id_producto);
                  
                     for (int i = 0; i < logica_carrito.logica_carrito.size(); i++) {
                        c=(carrito)logica_carrito.logica_carrito.get(i);   
                     }
                   //  out.print(c.getCarrito_id());
                     
                     
              if( c.getCarrito_id()== 0){
                    c = new carrito(
                         id_cliente,
                           id_producto,
                           Integer.parseInt(request.getParameter("cantidad"))
                    );

                   
                    conc.insertar(c);
                 //     out.print("hola");
                     //   request.getRequestDispatcher("producto.jsp?id="+ Integer.parseInt(request.getParameter("id_producto"))).forward(request, response);
              
               
                 
                  
              }else{
                   
                   
                  aumento=Integer.parseInt(request.getParameter("cantidad"))+c.getCarrito_cantidad();
                  
      //            out.print(aumento+"<br>");
                  
          //        out.print(c.getCarrito_id()+"<br>" );
              //     out.print(c.getCarrito_cantidad()+"<br>");
            //         out.print(c.getCarrito_producto()+"<br>");
                  
                   c = new carrito(c.getCarrito_id(), aumento);

                conc.actualizar_cantidad(c);
                  
              }
        
        
               }
        aumento=0;
        request.getRequestDispatcher("producto.jsp?id="+ Integer.parseInt(request.getParameter("id_producto"))).forward(request, response); 
        
        
        %>
        
        
    </body>
</html>
