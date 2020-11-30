/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.capsula_trabajador;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_capsula_trabajador {
     public static ArrayList logica_capsula_trabajador = new ArrayList();

    public static int estado;
    private conexion con = new conexion();
    
    
    /*insert into capsula_trabajador(capsula_trabajador_trabajador,capsula_trabajador_repartidor) values(9,10)*/
       public void insertar(capsula_trabajador temp) {
        try {
            con.getSt().executeUpdate("insert into capsula_trabajador(capsula_trabajador_trabajador,capsula_trabajador_repartidor) values('"+temp.getCapsula_trabajador_trabajador()+"','"+temp.getCapsula_trabajador_repartidor()+"');"
            );
        } catch (Exception e) {
        }
    }

    
    public void ver_capsula_trabajador() {
    
       con.consulta("select * from capsula_trabajador");
        logica_capsula_trabajador.clear();
        try {
            while (con.getRs().next()) {
                capsula_trabajador temp1 = new capsula_trabajador(
                         Integer.parseInt(con.getRs().getString(1)),
                         Integer.parseInt(con.getRs().getString(2)),
                         Integer.parseInt(con.getRs().getString(3))
                );
                logica_capsula_trabajador.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
    
      
    public void mostrar_capsula_trabajador(String id_trabajador) {
    
       con.consulta("select *from ver_capsula_trabajador where capsula_trabajador_trabajador='"+id_trabajador+"'");
        logica_capsula_trabajador.clear();
        try {
            while (con.getRs().next()) {
                capsula_trabajador temp1 = new capsula_trabajador(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        Integer.parseInt(con.getRs().getString(3)),
                        con.getRs().getString(4),
                        con.getRs().getString(5),
                        con.getRs().getString(6)
                );
                       
               
                logica_capsula_trabajador.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
    
       /*eliminar */
   public void eliminar(int id_temp){
        try {
            con.getSt().executeUpdate("delete from capsula_trabajador where capsula_trabajador_id="+id_temp );
        } catch (Exception e) {}
    }
    
   
   public void eliminar_capsula(int d) {
        try {
            con.getSt().executeUpdate("DELETE FROM capsula_trabajador WHERE capsula_trabajador_trabajador = '" + d + "'");
        } catch (Exception e) {
        }
    }

}
