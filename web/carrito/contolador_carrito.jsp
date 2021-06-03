
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
        <%

            int id_carrito = Integer.parseInt(request.getParameter("id_carrito"));
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));

            carrito c = new carrito();

            logica_carrito conc = new logica_carrito();
            if (request.getParameter("suma_resta").equals("aumentar")) {
                logica_carrito.estado = 1;

            } else if (request.getParameter("suma_resta").equals("disminuir")) {
                logica_carrito.estado = 2;

            } else {

            }

            if (logica_carrito.estado == 1) {

                cantidad = cantidad + 1;

                //out.print("1");
            } else if (logica_carrito.estado == 2) {
                cantidad = cantidad - 1;
                //  out.print(id_carrito); 

            } else {
                request.getRequestDispatcher("carrito.jsp").forward(request, response);
            }

            c = new carrito(id_carrito, cantidad);

            conc.actualizar_cantidad(c);
            logica_carrito.estado = 0;

            request.getRequestDispatcher("carrito.jsp").forward(request, response);


        %>




    </body>
</html>
