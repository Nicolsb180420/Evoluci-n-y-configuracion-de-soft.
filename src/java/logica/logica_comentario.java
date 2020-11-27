/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.comentario;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author bryan
 */
public class logica_comentario {
    
 
    
        public static ArrayList logica_comentario = new ArrayList();

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
    ver comentarios
    

create view ver_comentario
as
select 

cliente_nombre,
cliente_apellido,
comentario_descripcion ,
comentario_producto,
comentario_fecha,
comentario_id,
comentario_cliente

from comentario
inner join cliente on cliente.cliente_id=comentario.comentario_cliente 
    
    
 
select * from ver_comentario where comentario_producto=9 order by comentario_id  desc;
    
    */
    

     public void _mostrar_comentarios(int id_producto) {
        con.consulta("select * from ver_comentario where comentario_producto="+id_producto+"order by comentario_id  desc;");
        logica_comentario.clear();
        try {
            while (con.getRs().next()) {
                comentario temp = new comentario(
                        Integer.parseInt(con.getRs().getString(6)),
                        Integer.parseInt(con.getRs().getString(4)),
                        Integer.parseInt(con.getRs().getString(7)),
                        con.getRs().getString(1),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(5)
                );

                logica_comentario.add(temp);
            }
        } catch (Exception e) {
        }
    }
    
     
     /*ingresar comenttario 
     
insert into comentario(comentario_producto,comentario_cliente,comentario_descripcion,comentario_fecha)values (,,'',);
     
     */
     public void insertar(comentario temp) {
        try {
            con.getSt().executeUpdate("insert into comentario(comentario_producto,comentario_cliente,comentario_descripcion,comentario_fecha)values (" + 
                    temp.getComentario_producto() + "," 
                    + temp.getComentario_cliente() + ",'" 
                    + temp.getComentario_descripcion()
                    + "','"+hallar_fecha()+"');");
          
        } catch (Exception e) {
        }
    }
     
     
      public void eliminar(int d){
        try {
            con.getSt().executeUpdate("DELETE FROM comentario WHERE comentario_id ='"+d+"'");
        } catch (Exception e) {}
    }  
    
     
     
}
