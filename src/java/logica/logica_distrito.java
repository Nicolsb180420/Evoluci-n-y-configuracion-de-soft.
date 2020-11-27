/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.distrito;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_distrito {

    public static ArrayList logica_distrito = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    /*
   select * from distritos 
inner join provincias on provincias.provincia_id = distritos.distrito_provincias
where provincias.despro = 'BAGUA'
     
     */
    public void consultar(String id_dis) {
        con.consulta("select * from distritos inner join provincias on provincias.provincia_id = distritos.distrito_provincias where provincias.despro = '"
                + id_dis + "'");
        logica_distrito.clear();
        try {
            while (con.getRs().next()) {
                distrito temp = new distrito(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        Integer.parseInt(con.getRs().getString(4)),
                        Integer.parseInt(con.getRs().getString(5)),
                        con.getRs().getString(6),
                        con.getRs().getString(7),
                        Integer.parseInt(con.getRs().getString(8))
                );
                logica_distrito.add(temp);
            }
        } catch (Exception e) {
        }
    }

}
