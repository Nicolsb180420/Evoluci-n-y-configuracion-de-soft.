/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.puesto_permisos;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_puesto_permisos {
    
    
     public static ArrayList logica_puesto_permisos = new ArrayList();

    public static int estado;
    private conexion con = new conexion();
    
    /*mostrar a permisos por puesto*/
    
     public void consultar_permisos_puesto(String id_puesto) {
        con.consulta("select * from puesto_permisos  where puesto_permisos_puesto = '"+id_puesto+"';");
        logica_puesto_permisos.clear();
        try {
            while (con.getRs().next()) {
                puesto_permisos temp1 = new puesto_permisos(
                        Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        Integer.parseInt(con.getRs().getString(3))
                        );
                logica_puesto_permisos.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
    
    
    
    
    
}
