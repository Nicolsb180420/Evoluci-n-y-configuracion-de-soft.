/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.lista_pedido;
import java.util.ArrayList;

/**
 *
 * @author Nicol Samanamud
 */
public class logica_lista_pedido {
     public static ArrayList logica_lista_pedido = new ArrayList();

    public static int estado;
    private conexion con = new conexion();
    
    
    
    /*create view VerListaPedido
as
select producto_id,producto_imagen, producto__nombre, producto_precio,producto_descripcion, categoria_nombre, lista_pedido_cantidad,lista_pedidos_id,lista_pedidos_pedido from logica_lista_pedido
inner join producto on logica_lista_pedido.lista_pedidos_producto=producto.producto_id
inner join categoria on categoria.categoria_id=producto.producto_categoria*/
    
    /*select * from VerListaPedido
where lista_pedidos_pedido=1*/
    public void ver_lista_pedido(int id_pedido) {
        con.consulta("select * from VerListaPedido where lista_pedidos_pedido=" + id_pedido);
        logica_lista_pedido.clear();
        try {
            while (con.getRs().next()) {
                lista_pedido temp = new lista_pedido(Integer.parseInt(con.getRs().getString(8)),
                        Integer.parseInt(con.getRs().getString(9)),
                        Integer.parseInt(con.getRs().getString(7)),
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(3),
                        Float.parseFloat(con.getRs().getString(4)),
                        con.getRs().getString(5),
                        con.getRs().getString(6),
                        con.getRs().getString(2));

                logica_lista_pedido.add(temp);
            }
        } catch (Exception e) {
        }
    }
    
    
    
}
