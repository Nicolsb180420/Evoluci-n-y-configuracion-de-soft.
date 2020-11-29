/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.pedido;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author bryan
 */
public class logica_pedido {

    public static ArrayList logica_pedido = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    public String hallar_fecha() {

        Calendar fecha = Calendar.getInstance();
        int anio_actual = fecha.get(Calendar.YEAR);
        int mes_actual = fecha.get(Calendar.MONTH) + 1;
        int dia_actual = fecha.get(Calendar.DAY_OF_MONTH);

        return anio_actual + "-" + mes_actual + "-" + dia_actual;

    }

    /*
create procedure registrar_venta 
@pedido_cliente int,
@pedido_telefono int,
@pedido_distrito int,
@pedido_ubicacion varchar(200),
@pedido_pago float,
@pedido_fecha  varchar(20),
@pedido_estado  int,

@pedido_id INT OUTPUT
AS
BEGIN
        INSERT INTO pedido VALUES (@pedido_cliente,@pedido_telefono,@pedido_distrito,@pedido_ubicacion,@pedido_pago,@pedido_fecha,@pedido_estado) 
        set @pedido_id = SCOPE_IDENTITY()

end


go
declare @pedido_id int 
exec registrar_venta '1','9524852','1','gfdsgfsg','952','19-58-824',@pedido_id OUTPUT
insert lista_pedido VALUES

('gretel',@pedido_id,'1','825')
('gretel',@pedido_id,'1','825')

    
     */
    public void insertar(pedido temp, String cadena) {
        try {

            con.getSt().executeUpdate("go declare @pedido_id int exec registrar_venta '"
                    + temp.getPedido__cliente() + "','"
                    + temp.getPedido_telefono() + "','"
                    + temp.getPedido_distrito() + "','"
                    + temp.getPedido_ubicacion() + "','"
                    + temp.getPedido_pago() + "','"
                    + hallar_fecha() + "','0',@pedido_id OUTPUT insert lista_pedido (lista_pedidos_pedido,lista_pedidos_producto,lista_pedido_cantidad) VALUES"
                    + cadena
            );
        } catch (Exception e) {
        }
    }

    /* ver pedidos
     
     create view ver_pedidos as
SELECT        dbo.pedido.pedido_id, dbo.pedido.pedido_cliente, dbo.cliente.cliente_nombre, dbo.cliente.cliente_apellido, dbo.pedido.pedido_telefono, dbo.pedido.pedido_distrito, dbo.distritos.desdist, dbo.provincias.despro, 
                         dbo.departamentos.desdep, dbo.pedido.pedido_ubicacion, dbo.pedido.pedido_pago, dbo.pedido.pedido_fecha, dbo.pedido.pedido_estado
FROM            dbo.pedido INNER JOIN
                         dbo.cliente ON dbo.pedido.pedido_cliente = dbo.cliente.cliente_id INNER JOIN
                         dbo.distritos ON dbo.pedido.pedido_distrito = dbo.distritos.id_distrito INNER JOIN
                         dbo.provincias ON dbo.distritos.distrito_provincias = dbo.provincias.provincia_id INNER JOIN
                         dbo.departamentos ON dbo.provincias.provincia_departamento = dbo.departamentos.departamento_id
    
  select *from ver_pedidos where pedido_cliente=1 order by pedido_id DESC;

     */
    public void ver_pedidos(String id_cliente) {
        con.consulta("select *from ver_pedidos where pedido_cliente= '"+id_cliente+"' order by pedido_id DESC");
        logica_pedido.clear();
        try {
            while (con.getRs().next()) {
                pedido temp = new pedido(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                        Integer.parseInt(con.getRs().getString(5)),
                        Integer.parseInt(con.getRs().getString(6)),
                        con.getRs().getString(7),
                        con.getRs().getString(8),
                        con.getRs().getString(9),
                        con.getRs().getString(10),
                        Float.parseFloat(con.getRs().getString(11)),
                        con.getRs().getString(12),
                        Integer.parseInt(con.getRs().getString(13)));

                logica_pedido.add(temp);
            }
        } catch (Exception e) {
        }
    }

    /*eliminar */
   public void eliminar(int id_temp){
        try {
            con.getSt().executeUpdate("delete from pedido where pedido_id="+id_temp );
        } catch (Exception e) {}
    }
    
   
   /*Visualizacion de pedidos de todos los clientes*/
   /*create view VistaPedidosComp
as
select pedido_id,pedido_cliente,cliente_nombre,cliente_apellido,pedido_telefono,desdist,pedido_ubicacion,pedido_fecha,pedido_pago,pedido_estado 
from pedido
inner join cliente on cliente_id=pedido_cliente
inner join distritos on distritos.id_distrito=pedido_distrito*/

   
   public void VerPedidosDeClientes() {
        con.consulta("select * from VistaPedidosComp");
        logica_pedido.clear();
        try {
            while (con.getRs().next()) {
                pedido temp = new pedido(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                        Integer.parseInt(con.getRs().getString(5)),
                        con.getRs().getString(6),
                        con.getRs().getString(7),
                        Float.parseFloat(con.getRs().getString(9)),
                        con.getRs().getString(8),
                        Integer.parseInt(con.getRs().getString(10)));

                logica_pedido.add(temp);
            }
        } catch (Exception e) {
        }
    }
   
   
     public void actualizar_estado(pedido temp) {
        try {
            con.getSt().executeUpdate(
                    "UPDATE pedido  "
                    + "     SET pedido_estado = "+temp.getPedido_estado()
                    + "     WHERE pedido_id = "+temp.getPedido_id()+";"
            );
        } catch (Exception e) {
        }
    }
     
     
        public void ver_pedidos_estados(int estado_venta) {
        con.consulta("select * from VistaPedidosComp where pedido_estado="+estado_venta);
        logica_pedido.clear();
        try {
            while (con.getRs().next()) {
                pedido temp = new pedido(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                        Integer.parseInt(con.getRs().getString(5)),
                        con.getRs().getString(6),
                        con.getRs().getString(7),
                        Float.parseFloat(con.getRs().getString(9)),
                        con.getRs().getString(8),
                        Integer.parseInt(con.getRs().getString(10)));

                logica_pedido.add(temp);
            }
        } catch (Exception e) {
        }
    }
   
     
     
     
     
     
   
}
