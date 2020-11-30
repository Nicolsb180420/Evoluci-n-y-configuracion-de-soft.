
<%@page import="logica.logica_capsula_trabajador"%>
<%@page import="datos.capsula_trabajador"%>
<%@page import="logica.logica_capsula_pedido"%>
<%@page import="datos.capsula_pedido"%>
<%@page import="logica.logica_encomienda"%>
<%@page import="datos.encomienda"%>
<%@page import="logica.logica_vehiculo"%>
<%@page import="datos.vehiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int trabajador_id;
            HttpSession sesion_trabajadro = request.getSession();

            trabajador_id = Integer.parseInt(sesion_trabajadro.getAttribute("trabajador_id").toString());

            int id_distrito;

            vehiculo temp2 = new vehiculo();
            logica_vehiculo con2 = new logica_vehiculo();

            encomienda temp_en = new encomienda();
            logica_encomienda con_en = new logica_encomienda();

            con2.vehiculo_disponible();

            out.print(logica_vehiculo.Lvehiculos.size() + "<br>");

            for (int i = 0; i < logica_vehiculo.Lvehiculos.size(); i++) {
                temp2 = (vehiculo) logica_vehiculo.Lvehiculos.get(i);
            }

            id_distrito = Integer.parseInt(request.getParameter("cmbdistrito"));

            out.print(temp2.getVehiculo_id());

            /*
            
            
create procedure insertar_encomienda

@encomienda_vehiculo int,
@encomienda_distrito int,
@encomienda_fecha varchar(20),

@encomienda_id  INT OUTPUT
AS
BEGIN
        INSERT INTO encomienda (encomienda_vehiculo,encomienda_distrito,encomienda_fecha)
                VALUES (@encomienda_vehiculo,@encomienda_distrito,@encomienda_fecha) 
        set @encomienda_id   = SCOPE_IDENTITY()
end
             */
 /*armar los arreglos */
 /*capsula pedidos*/
            String consulta_pedido = "";
            String cadena_pedido = "NN";

            capsula_pedido temp_cp = new capsula_pedido();
            logica_capsula_pedido con_cp = new logica_capsula_pedido();

            con_cp.ver_capsula_pedido();

            int ultimo_pedido = logica_capsula_pedido.logica_capsula_pedido.size() - 1;

            for (int i = 0; i < logica_capsula_pedido.logica_capsula_pedido.size(); i++) {
                temp_cp = (capsula_pedido) logica_capsula_pedido.logica_capsula_pedido.get(i);

                if (ultimo_pedido != i) {
                    cadena_pedido = "('" + temp_cp.getCapsula_pedido_pedido() + "',@encomienda_id),";

                } else {
                    cadena_pedido = "('" + temp_cp.getCapsula_pedido_pedido() + "',@encomienda_id)";
                }

                consulta_pedido += cadena_pedido;
                out.print(consulta_pedido);
                //    out.print(temp_cp.getCapsula_pedido_id() + " " + temp_cp.getCapsula_pedido_pedido() + " " + temp_cp.getCapsula_pedido_trabajador() + "<br>");

            }

            /*capsula trabajdor*/
            out.print("<br>");

            String consulta_trabajador = "";
            String cadena_trabajador = "NN";

            capsula_trabajador temp_ct = new capsula_trabajador();
            logica_capsula_trabajador con_ct = new logica_capsula_trabajador();

            con_ct.ver_capsula_trabajador();

            int ultimo_trabajador = logica_capsula_trabajador.logica_capsula_trabajador.size() - 1;

            for (int i = 0; i < logica_capsula_trabajador.logica_capsula_trabajador.size(); i++) {
                temp_ct = (capsula_trabajador) logica_capsula_trabajador.logica_capsula_trabajador.get(i);

                if (ultimo_trabajador != i) {
                    cadena_trabajador = "('" + temp_ct.getCapsula_trabajador_repartidor() + "',@encomienda_id),";

                } else {
                    cadena_trabajador = "('" + temp_ct.getCapsula_trabajador_repartidor() + "',@encomienda_id)";
                }

                consulta_trabajador += cadena_trabajador;
                out.print(consulta_trabajador);
                //    out.print(temp_ct.getCapsula_trabajador_id() + " " + temp_ct.getCapsula_trabajador_repartidor() + " " + temp_ct.getCapsula_trabajador_trabajador() + "<br>");

            }
            temp_en = new encomienda(temp2.getVehiculo_id(), id_distrito);

            con_en.insertar_encomienda(temp_en, consulta_trabajador, consulta_pedido);

        %>




        <%//borrar capsulas 
        /*


             */

         /*
        create trigger cambio_estado_vehiculo	
        on encomienda for insert 
        as 
        set 
        nocount on 
        update vehiculo set vehiculo_estado=1 from inserted
        inner join vehiculo on vehiculo.vehiculo_id = inserted.encomienda_vehiculo

             */
            con_cp.eliminar_capsula(trabajador_id);
            con_ct.eliminar_capsula(trabajador_id);

            response.sendRedirect("registrar_encomienda.jsp");


        %>





    </body>
</html>
