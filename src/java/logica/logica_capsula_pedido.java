/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.capsula_pedido;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_capsula_pedido {
    
        public static ArrayList logica_capsula_pedido = new ArrayList();

    public static int estado;
    private conexion con = new conexion();
    
    
    /*insert into capsula_trabajador(capsula_trabajador_trabajador,capsula_trabajador_repartidor) values(9,10)*/
       public void insertar(capsula_pedido temp) {
        try {
            con.getSt().executeUpdate("insert into capsula_pedido(capsula_pedido_pedido,capsula_pedido_trabajador) values('"+temp.getCapsula_pedido_pedido()+"','"+temp.getCapsula_pedido_trabajador()+"');"
            );
        } catch (Exception e) {
        }
    }
public void ver_capsula_pedido() {
    
       con.consulta("select * from capsula_pedido");
        logica_capsula_pedido.clear();
        try {
            while (con.getRs().next()) {
                capsula_pedido temp1 = new capsula_pedido(
                         Integer.parseInt(con.getRs().getString(1)),
                         Integer.parseInt(con.getRs().getString(2)),
                         Integer.parseInt(con.getRs().getString(3))
                );
                logica_capsula_pedido.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
    
  public void mostrar_capsula_trabajador(String id_trabajador) {
    
       con.consulta("select * from ver_capsula_pedido  where capsula_pedido_trabajador='"+id_trabajador+"'");
        logica_capsula_pedido.clear();
        try {
            while (con.getRs().next()) {
                capsula_pedido temp1 = new capsula_pedido(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        Integer.parseInt(con.getRs().getString(3)),
                        Integer.parseInt(con.getRs().getString(4)),
                        con.getRs().getString(5),
                        con.getRs().getString(6), 
                        Integer.parseInt(con.getRs().getString(7)),
                        Integer.parseInt(con.getRs().getString(8)),
                        con.getRs().getString(9),
                        Integer.parseInt(con.getRs().getString(10)),
                        con.getRs().getString(11),
                        Integer.parseInt(con.getRs().getString(12)),
                        con.getRs().getString(13),
                        con.getRs().getString(14),
                        Integer.parseInt(con.getRs().getString(15)),  
                        Integer.parseInt(con.getRs().getString(16))
                );
                   
                       
               
                logica_capsula_pedido.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
       public void eliminar(int cap_pdedido){
        try {
            con.getSt().executeUpdate("delete from capsula_pedido where capsula_pedido_id="+cap_pdedido );
        } catch (Exception e) {}
    }
    
public void eliminar_capsula(int d) {
        try {
            con.getSt().executeUpdate("DELETE FROM capsula_pedido WHERE capsula_pedido_trabajador ='" + d + "'");
        } catch (Exception e) {
        }
    }

}
