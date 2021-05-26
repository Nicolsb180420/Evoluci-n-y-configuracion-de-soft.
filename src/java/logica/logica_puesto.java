/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.puesto;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_puesto {
    
      public static ArrayList logica_puesto = new ArrayList();

    public static int estado;
    private conexion con = new conexion();
    
     public void consultar_puesto() {
        con.consulta("select * from puesto");
        logica_puesto.clear();
        try {
            while (con.getRs().next()) {
                puesto temp1 = new puesto(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3));
                logica_puesto.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
    
}
