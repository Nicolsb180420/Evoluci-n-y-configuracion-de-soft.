
<%@page import="logica.logica_pedido"%>
<%@page import="datos.pedido"%>
<%@page import="logica.logica_carrito"%>
<%@page import="datos.carrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String id_cliente = request.getParameter("id_cliente");

            String pago_total = request.getParameter("pago_total");
            String id_distrito = request.getParameter("cmbdistrito");
            String ubicacion = request.getParameter("ubicacion");
            String celular = request.getParameter("numero");

            /*    out.print(id_cliente + "<br>");
         out.print(celular + "<br>");
         out.print(id_distrito + "<br>");
        
         out.print(ubicacion + "<br>");
            out.print(pago_total + "<br>");
             */
            pedido temp_pedido = new pedido();
            logica_pedido con_pedido = new logica_pedido();

            temp_pedido = new pedido(
                    Integer.parseInt(request.getParameter("id_cliente")),
                    Integer.parseInt(request.getParameter("numero")),
                    Integer.parseInt(request.getParameter("cmbdistrito")),
                    request.getParameter("ubicacion"),
                    Float.parseFloat(request.getParameter("pago_total"))
            );

            /*create procedure registrar_venta 
   @pedido_cliente int,
   @pedido_telefono int,
   @pedido_distrito int,
   @pedido_ubicacion varchar(200),
   @pedido_pago int,
   @pedido_fecha  varchar(20),

   @pedido_id INT OUTPUT
   AS
   BEGIN
           INSERT INTO pedido VALUES (@pedido_cliente,@pedido_telefono,@pedido_distrito,@pedido_ubicacion,@pedido_pago,@pedido_fecha) 
           set @pedido_id = SCOPE_IDENTITY()

   end*/
 /*
        go
   declare @pedido_id int 
   exec registrar_venta '1','9524852','1','gfdsgfsg','952','19-58-824',@pedido_id OUTPUT
   insert lista_pedido VALUES('gretel',@pedido_id,'1','825')
     
             */
            String consulta = "";
            String cadena = "NN";
            carrito temp = new carrito();
            logica_carrito con = new logica_carrito();

            con.validar_exixtencia(id_cliente);
            
            int ultimo = logica_carrito.logica_carrito.size() - 1;
            for (int i = 0; i < logica_carrito.logica_carrito.size(); i++) {
                temp = (carrito) logica_carrito.logica_carrito.get(i);
                if (ultimo != i) {
                    cadena = "(@pedido_id,'" + temp.getCarrito_producto() + "','" + temp.getCarrito_cantidad() + "'),";

                } else {
                    cadena = "(@pedido_id,'" + temp.getCarrito_producto() + "','" + temp.getCarrito_cantidad() + "')";
                }

                consulta += cadena;
            }

            //  out.print(consulta);
            con_pedido.insertar(temp_pedido, consulta);
            
            
            con.limpiar_carrito(id_cliente);
            response.sendRedirect("../lista_pedidos/lista_solicitud.jsp");


        %>















    </body>
</html>
