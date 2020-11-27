/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.carrito;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_carrito {

    public static ArrayList logica_carrito = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    /*insert into carrito(carrito_cliente,carrito_producto,carrito_cantidad)values (1,9,19);*/
    public void insertar(carrito temp) {
        try {
            con.getSt().executeUpdate("insert into carrito(carrito_cliente,carrito_producto,carrito_cantidad)values (" + temp.getCarrito_cliente() + "," + temp.getCarrito_producto() + "," + temp.getCarrito_cantidad() + ");"
            );
        } catch (Exception e) {
        }
    }

    /*
    
    
create view ver_carrito as
SELECT        dbo.carrito.carrito_id, dbo.carrito.carrito_cliente, dbo.carrito.carrito_producto, dbo.producto.producto__nombre, dbo.producto.producto_precio, dbo.producto.producto_descripcion, dbo.categoria.categoria_nombre, 
                         dbo.producto.producto_imagen, dbo.carrito.carrito_cantidad
FROM            dbo.carrito INNER JOIN
                         dbo.producto ON dbo.carrito.carrito_producto = dbo.producto.producto_id INNER JOIN
                         dbo.categoria ON dbo.producto.producto_categoria = dbo.categoria.categoria_id
    
    
    select * from ver_carrito where carrito_cliente=1
    
    */
    public void validar_exixtencia(String id_cliente) {
        con.consulta("select * from ver_carrito where carrito_cliente='"+id_cliente+"'");
        logica_carrito.clear();
        try {
            while (con.getRs().next()) {
                carrito temp = new carrito(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        Integer.parseInt(con.getRs().getString(3)),
                        con.getRs().getString(4),
                        Float.parseFloat(con.getRs().getString(5)),
               
                        con.getRs().getString(6),
                        con.getRs().getString(7),
                        con.getRs().getString(8),
                        Integer.parseInt(con.getRs().getString(9))
                );
                logica_carrito.add(temp);
            }
        } catch (Exception e) {
        }
    }
    
    /*
    
    */
    public void validar(int id_cliente,int id_producto) {
        con.consulta("select *from carrito where carrito_cliente='"+id_cliente+"' and carrito_producto='"+id_producto+"'");
        logica_carrito.clear();
        try {
            while (con.getRs().next()) {
                carrito temp = new carrito(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        Integer.parseInt(con.getRs().getString(3)),
                        Integer.parseInt(con.getRs().getString(4))
                );
                logica_carrito.add(temp);
            }
        } catch (Exception e) {
        }
    }

    
    

    /*
        
create trigger restriccion_carrito_menos on carrito for update 
as 
declare @cantidad int

select @cantidad = carrito_cantidad from inserted

if (@cantidad<1)
begin

 rollback
 
end
        
UPDATE carrito 
    SET carrito_cantidad = 2 
    WHERE carrito_id = 2
        
        
        
     */

    public void actualizar_cantidad(carrito temp) {
        try {
            con.getSt().executeUpdate(
                    "UPDATE carrito "
                    + "    SET carrito_cantidad = "+temp.getCarrito_cantidad()
                    + "    WHERE carrito_id = "+temp.getCarrito_id()+";"
            );
        } catch (Exception e) {
        }
    }
    
       
    /*eliminar */
   public void eliminar(int id_temp){
        try {
            con.getSt().executeUpdate("delete from carrito where carrito_id = "+id_temp );
        } catch (Exception e) {}
    }

    
    
}


