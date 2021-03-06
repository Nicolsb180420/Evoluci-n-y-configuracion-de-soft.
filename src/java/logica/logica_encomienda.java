/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.encomienda;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author bryan
 */
public class logica_encomienda {

    public static ArrayList logica_encomienda = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    public String hallar_fecha() {

        Calendar fecha = Calendar.getInstance();
        int anio_actual = fecha.get(Calendar.YEAR);
        int mes_actual = fecha.get(Calendar.MONTH) + 1;
        int dia_actual = fecha.get(Calendar.DAY_OF_MONTH);

        return anio_actual + "-" + mes_actual + "-" + dia_actual;

    }

    public void insertar_encomienda(encomienda temp, String datos_trabajador, String datos_pedido) {
        try {
            con.getSt().executeUpdate(
                    " declare @encomienda_id int exec insertar_encomienda " + temp.getEncomienda_vehiculo() + "," + temp.getEncomienda_distrito() + ",'" + hallar_fecha() + "',@encomienda_id OUTPUT "
                    + " INSERT INTO encomienda_trabajador(encomienda_trabajador_trabajador,encomienda_trabajador_encomienda) VALUES " + datos_trabajador
                    + " INSERT INTO lista_envio(lista_envio_pedido,lista_envio_encomienda) VALUES " + datos_pedido + " "
            );
        } catch (Exception e) {
        }
    }
    
    /*CONSULTAR*/
    public void consultar() { 
        con.consulta("select * from VistaEncomienda");
        logica_encomienda.clear();
        try {
            while (con.getRs().next()) {
                encomienda temp1 = new encomienda(Integer.parseInt(con.getRs().getString(1)),
                        Integer.parseInt(con.getRs().getString(2)),
                        con.getRs().getString(7),
                        Integer.parseInt(con.getRs().getString(8)),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                        con.getRs().getString(5),
                        con.getRs().getString(6)
                       );
                logica_encomienda.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
    
    public void actualizar_estado(encomienda temp) {
        try {
            con.getSt().executeUpdate(
                    "UPDATE encomienda  SET encomienda_estado ="+temp.getEncomienda_distrito()
                    + "    WHERE encomienda_id = "+temp.getEncomienda_vehiculo()+";"
            );
        } catch (Exception e) {
        }
    }

}
