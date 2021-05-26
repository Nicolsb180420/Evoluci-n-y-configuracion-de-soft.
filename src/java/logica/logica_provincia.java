/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.provincia;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_provincia {
     public static ArrayList logica_provincia = new ArrayList();

    public static int estado;
    private conexion con = new conexion();
    
    
   public void consultar(String id_dep ){
        con.consulta("select * from provincias inner join departamentos on provincias.provincia_departamento = departamentos.departamento_id where departamentos.desdep = '"+id_dep+"'");
        logica_provincia.clear();
        try {
            while (con.getRs().next()) {                                
                provincia temp=new provincia(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2), 
                        con.getRs().getString(3),
                        Integer.parseInt(con.getRs().getString(4)),
                        Integer.parseInt(con.getRs().getString(5)),
                         con.getRs().getString(6),
                         con.getRs().getString(7));
                    
                        
                logica_provincia.add(temp);
            }
        } catch (Exception e) {}
    }
    
    
    
}
