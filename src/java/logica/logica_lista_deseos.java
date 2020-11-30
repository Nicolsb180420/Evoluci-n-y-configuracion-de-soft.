/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.lista_deseos;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_lista_deseos {

    public static ArrayList logica_lista_deseos = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    /*insert into lista_deseos(lista_deseos_cliente,lista_deseos_producto)values (,);*/
    public void insertar(lista_deseos temp) {
        try {
            con.getSt().executeUpdate("insert into lista_deseos(lista_deseos_cliente,lista_deseos_producto)values (" + temp.getLista_deseos_cliente() + "," + temp.getLista_deseos_producto() + ");"
            );
        } catch (Exception e) {
        }
    }
    
    /*verificar si existe o no */
    public void lt_boton(String id,int id_producto) {
        /*select *from lista_deseos where lista_deseos_cliente=1 and lista_deseos_producto = 13/*/

        con.consulta("select *from lista_deseos where lista_deseos_cliente=" + id+" and lista_deseos_producto = "+id_producto);
        logica_lista_deseos.clear();
        try {
            while (con.getRs().next()) {
                lista_deseos temp1 = new lista_deseos(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        Integer.parseInt(con.getRs().getString(3))
                );
                logica_lista_deseos.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    

  /*  public void lt_boton(String id) {
        /*select *from lista_deseos where lista_deseos_cliente=1

        con.consulta("select *from lista_deseos where lista_deseos_cliente=" + id);
        logica_lista_deseos.clear();
        try {
            while (con.getRs().next()) {
                lista_deseos temp1 = new lista_deseos(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        Integer.parseInt(con.getRs().getString(3))
                );
                logica_lista_deseos.add(temp1);
            }
        } catch (Exception e) {
        }
    }*/

    public void eliminar(int d) {
        try {
            con.getSt().executeUpdate("DELETE FROM lista_deseos WHERE lista_deseos_id ='" + d + "'");
        } catch (Exception e) {
        }
    }

    /*
create view masVendidos
as
select top 10
producto_id, producto__nombre, producto_descripcion, producto_imagen,
count(producto_id) as cantidad
from lista_deseos
inner join producto on producto.producto_id=lista_deseos.lista_deseos_producto
where producto_id=lista_deseos_producto
group by 
producto_id, producto__nombre, producto_descripcion, producto_imagen
order by cantidad desc*/
    
    public void masVendidos() {
        con.consulta("select TOP (9) * from masVendidos ORDER BY cantidad DESC");
        logica_lista_deseos.clear();
        try {
            while (con.getRs().next()) {
                lista_deseos temp1 = new lista_deseos(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                Integer.parseInt(con.getRs().getString(6)));
                logica_lista_deseos.add(temp1);
            }
        } catch (Exception e) {
        }
    }

    /*select  cliente_id,producto_id,producto_imagen, producto__nombre, categoria_nombre,producto_descripcion, producto_precio, lista_deseos_id
from lista_deseos
inner join producto on producto.producto_id=lista_deseos.lista_deseos_producto
inner join cliente on cliente.cliente_id=lista_deseos.lista_deseos_cliente
inner join categoria on categoria_id=producto_categoria
where cliente_id=1*/
    public void ListaDeseos(String id) {
        con.consulta("select  cliente_id,producto_id,producto_imagen, producto__nombre, categoria_nombre,producto_descripcion, producto_precio, lista_deseos_id from lista_deseos"
                + " inner join producto on producto.producto_id=lista_deseos.lista_deseos_producto"
                + " inner join cliente on cliente.cliente_id=lista_deseos.lista_deseos_cliente"
                + " inner join categoria on categoria_id=producto_categoria"
                + " where cliente_id=" + id);
        logica_lista_deseos.clear();
        try {
            while (con.getRs().next()) {
                lista_deseos temp1 = new lista_deseos(
                        Integer.parseInt(con.getRs().getString(8)),
                        Integer.parseInt(con.getRs().getString(2)),
                        con.getRs().getString(4),
                        Float.parseFloat(con.getRs().getString(7)),
                        con.getRs().getString(6),
                        con.getRs().getString(5),
                        con.getRs().getString(3),
                        Integer.parseInt(con.getRs().getString(1)));
                logica_lista_deseos.add(temp1);
            }
        } catch (Exception e) {
        }
    }

}
