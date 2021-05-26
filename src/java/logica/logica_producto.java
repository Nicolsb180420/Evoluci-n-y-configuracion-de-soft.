/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.producto;

import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_producto {

    public static ArrayList logica_producto = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    int r = 0;

    public int agregar(producto p) {
        try {
            /* 
create procedure insertar_producto
@productonombre varchar(50),
@producto_precio float,
@producto_caracteristica varchar(MAX),
@producto_descripcion varchar(MAX),
@producto_categoria int,
@producto_peso varchar(50),
@producto_tipo_peso varchar(50),
@producto_imagen varchar(MAX),
@producto_id INT OUTPUT
AS
BEGIN
        INSERT INTO producto (productonombre,producto_precio,producto_caracteristica,producto_descripcion,producto_categoria,producto_peso,producto_tipo_peso,producto_imagen)
        VALUES (@producto__nombre,@producto_precio,@producto_caracteristica,@producto_descripcion,@producto_categoria,@producto_peso,@producto_tipo_peso,@producto_imagen) 
        set @producto_id = SCOPE_IDENTITY()
end
             /

 /declare @producto_id 
int exec insertar_producto 'prueba',8,'prueba','addd',5,'5','Lt','dasdas',@producto_id OUTPUT 
INSERT INTO stock(stock_producto) 
VALUES (@producto_id);*/
            con.getSt().executeUpdate("declare @producto_id int exec insertar_producto '"
                    + p.getProducto_nombre() + "','"
                    + p.getProducto_precio() + "','"
                    + p.getProducto_caracteristica() + "','"
                    + p.getProducto_descripcion() + "','"
                    + p.getProducto_categoria() + "','"
                    + p.getProducto_peso() + "','"
                    + p.getProducto_tipo_peso() + "','"
                    + p.getProducto_imagen() + "',@producto_id OUTPUT INSERT INTO stock(stock_producto) VALUES (@producto_id);");
        } catch (Exception e) {
        }
        return r;
    }

    public int actualizar(producto p) {
        try {
            /* 
update producto set producto__nombre='prueba', producto_precio=8,producto_caracteristica='aaa',producto_descripcion='aaa',producto_categoria=2,producto_peso=9,producto_tipo_peso='Lt',
            producto_imagen='aaa' where producto_id=24
             */
            con.getSt().executeUpdate("update producto set producto__nombre='"
                    + p.getProducto_nombre() + "', producto_precio="
                    + p.getProducto_precio() + ",producto_caracteristica='"
                    + p.getProducto_caracteristica() + "',producto_descripcion='"
                    + p.getProducto_descripcion() + "',producto_categoria="
                    + p.getProducto_categoria() + ",producto_peso="
                    + p.getProducto_peso() + ",producto_tipo_peso='"
                    + p.getProducto_tipo_peso() + "',producto_imagen='"
                    + p.getProducto_imagen() + "' where producto_id=" + p.getProducto_id());
        } catch (Exception e) {
        }
        return r;
    }

    /*CONSULTAR*/
    public void consultarProducto(int id) {
        /*select * from producto
where producto_id=11;*/
 /*select * from producto
inner join categoria on categoria.categoria_id=producto.producto_categoria
where producto_id=11;*/

        con.consulta("select * from producto inner join categoria on categoria.categoria_id=producto.producto_categoria where producto_id=" + id);
        logica_producto.clear();
        try {
            while (con.getRs().next()) {
                producto temp1 = new producto(Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        Float.parseFloat(con.getRs().getString(3)),
                        con.getRs().getString(4),
                        con.getRs().getString(5),
                        Integer.parseInt(con.getRs().getString(6)),
                        Integer.parseInt(con.getRs().getString(11)),
                        con.getRs().getString(12),
                        con.getRs().getString(7),
                        con.getRs().getString(8),
                        con.getRs().getString(9),
                        Integer.parseInt(con.getRs().getString(10)));
                logica_producto.add(temp1);
            }
        } catch (Exception e) {
        }
    }

    /*CONSULTAR*/
    public void consultar() {
        con.consulta("select producto_id,producto__nombre from producto");
        logica_producto.clear();
        try {
            while (con.getRs().next()) {
                producto temp1 = new producto(Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2)
                );
                logica_producto.add(temp1);
            }
        } catch (Exception e) {
        }
    }

    /*CONSULTAR*/
    public void consultarListaProductos() {
        con.consulta("select * from producto inner join categoria on producto_categoria=categoria_id");
        logica_producto.clear();
        try {
            while (con.getRs().next()) {
                producto temp1 = new producto(Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        Float.parseFloat(con.getRs().getString(3)),
                        con.getRs().getString(4),
                        con.getRs().getString(5),
                        Integer.parseInt(con.getRs().getString(6)),
                        Integer.parseInt(con.getRs().getString(11)),
                        con.getRs().getString(12),
                        con.getRs().getString(7),
                        con.getRs().getString(8),
                        con.getRs().getString(9),
                        Integer.parseInt(con.getRs().getString(10)));
                logica_producto.add(temp1);
            }
        } catch (Exception e) {
        }
    }

    public void ultimo_registro() {
        /*select * from producto
where producto_id=11;*/
 /*select * from producto
inner join categoria on categoria.categoria_id=producto.producto_categoria
where producto_id=11;*/

        con.consulta("select top(12) producto_id,producto__nombre,producto_descripcion,producto_imagen, producto_valoracion from producto order by producto_id desc;");
        logica_producto.clear();
        try {
            while (con.getRs().next()) {
                producto temp1 = new producto(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                        Integer.parseInt(con.getRs().getString(5)));
                logica_producto.add(temp1);
            }
        } catch (Exception e) {
        }
    }

    public void mostrarCategorias(int id) {

        con.consulta("select producto_id,producto__nombre,producto_descripcion,producto_imagen from producto where producto_categoria=" + id);
        logica_producto.clear();
        try {
            while (con.getRs().next()) {
                producto temp1 = new producto(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4));
                logica_producto.add(temp1);
            }
        } catch (Exception e) {
        }
    }

    public void CajadeTexto(String busqueda) {
        /*
        select producto_id,producto__nombre,producto_descripcion,producto_imagen 
from producto 
inner join categoria on producto.producto_categoria=categoria.categoria_id
where categoria_nombre like '%a%' or producto__nombre like '%a%' 
or producto_caracteristica like '%a%' or producto_descripcion like '%a%'
or producto_peso like '%5%' or producto_tipo_peso like '%t%'
         */

        con.consulta("select producto_id,producto__nombre,producto_descripcion,producto_imagen from producto inner join categoria on producto.producto_categoria=categoria.categoria_id "
                + " where categoria_nombre like '%" + busqueda + "%' or producto__nombre like '%" + busqueda + "%' or producto_caracteristica like '% "
                + busqueda + "%' or producto_descripcion like '%" + busqueda + "%' or producto_peso like '%" + busqueda + "%' or producto_tipo_peso like '%" + busqueda + "%'");
        logica_producto.clear();
        try {
            while (con.getRs().next()) {
                producto temp1 = new producto(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4));
                logica_producto.add(temp1);
            }
        } catch (Exception e) {
        }
    }

    public void productos_semejantes(int id_categoria) {
        /*select * from producto
where producto_id=11;*/
 /*select * from producto
inner join categoria on categoria.categoria_id=producto.producto_categoria
where producto_id=11;*/

        con.consulta("select top 5 producto_id,producto__nombre,producto_descripcion,producto_imagen from producto  where producto_categoria=" + id_categoria + " order by NEWID()");
        logica_producto.clear();
        try {
            while (con.getRs().next()) {
                producto temp1 = new producto(Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4));
                logica_producto.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
    
    
    /*
    
UPDATE producto 
                  SET producto_valoracion = 1 
                      WHERE producto_id = 1
    
    
    */
    
    
        public void borrar(int  id_producto) {
      
        try {
            con.getSt().executeUpdate("UPDATE producto SET producto_valoracion = 1 WHERE producto_id ="  + id_producto
                    );
        } catch (Exception e) {
        }
    }
    
    
    
    

}
