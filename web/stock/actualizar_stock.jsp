

<%@page import="logica.logica_stock"%>
<%@page import="datos.stock"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

           
            if (request.getParameter("btnActualizar1") != null) {
                logica_stock.estado = 3;
            }
         

            stock temp2 = new stock();
            logica_stock con2 = new logica_stock();

            
            if (logica_stock.estado == 3) {
            
           
                 for (int i =0 ; i <logica_stock.logica_stock.size(); i++) {
                     
               
                 temp2 = new stock(
                        Integer.parseInt(request.getParameter("txtid" + i)),
                        Integer.parseInt(request.getParameter("txtcantidad" + i))
                 );
             
                con2.actualizar(temp2);
                        
                 }
                response.sendRedirect("lista_stock_1.jsp");
            
         
            }
            


        %>
    </body>
</html> 
