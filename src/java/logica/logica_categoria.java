/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.categoria;
import java.util.ArrayList;

/**
 *
 * @author Nicol Samanamud
 */
public class logica_categoria {
    public static ArrayList logica_categoria = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    public void consultarDep() {
        con.consulta("select * from categoria");
        logica_categoria.clear();
        try {
            while (con.getRs().next()) {
                categoria temp1 = new categoria(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2));
                logica_categoria.add(temp1);
            }
        } catch (Exception e) {
        }
    }
}
