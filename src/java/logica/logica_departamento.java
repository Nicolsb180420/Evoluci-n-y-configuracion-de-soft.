/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.departamento;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_departamento {

    public static ArrayList logica_departamento = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    public void consultarDep() {
        con.consulta("select * from departamentos");
        logica_departamento.clear();
        try {
            while (con.getRs().next()) {
                departamento temp1 = new departamento(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3));
                logica_departamento.add(temp1);
            }
        } catch (Exception e) {
        }
    }

}
