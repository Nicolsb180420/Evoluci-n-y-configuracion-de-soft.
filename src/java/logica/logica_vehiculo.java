/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.vehiculo;
import java.util.ArrayList;

/**
 *
 * @author Nicol Samanamud
 */
public class logica_vehiculo {
public static ArrayList Lvehiculos= new ArrayList();
    public static int estado;
    private conexion con2 = new conexion();

    public void insertar(vehiculo temp) {
        try {
            /*insert into vehiculo values('AAA123','Toyota','2014','2T','2018-06-14')*/
           con2.getSt().executeUpdate("insert into vehiculo values('" + temp.getVehiculo_placa()
                    + "','" + temp.getVehiculo_marca()
                    + "','" + temp.getVehiculo_modelo()
                    + "','" + temp.getVehiculo_capCarga()
                    + "','" + temp.getVehiculo_fecha_registro() 
                    + "')");
        } catch (Exception e) {
        }
    }

    
    /*CONSULTAR*/
    public void consultar() {
        con2.consulta("select * from vehiculo");
        Lvehiculos.clear();
        try {
            while (con2.getRs().next()) {
                vehiculo temp1 = new vehiculo(Integer.parseInt(con2.getRs().getString(1)),
                        con2.getRs().getString(2),
                        con2.getRs().getString(3),
                        con2.getRs().getString(4),
                        con2.getRs().getString(5),
                        con2.getRs().getString(6)
                        );
                Lvehiculos.add(temp1);
            }
        } catch (Exception e) {
        }
    }

    
    /*ACTUALIZAR*/
    public void actualizar(vehiculo temp) {
        /*UPDATE vehiculo
SET vehiculo_placa = 'Marycielo', vehiculo_marca = 'Vega', vehiculo_modelo='Tinuco', vehiculo_capCarga='Colombiana', 
vehiculo_fecha_registro='2001-01-26'
WHERE vehiculo_id = '3'*/
        try {
            con2.getSt().executeUpdate("UPDATE vehiculo SET vehiculo_placa = '"
                    + temp.getVehiculo_placa()
                    + "', vehiculo_marca = '"
                    + temp.getVehiculo_marca()
                    + "', vehiculo_modelo='"
                    + temp.getVehiculo_modelo()
                    + "', vehiculo_capCarga='"
                    + temp.getVehiculo_capCarga()
                    + "', vehiculo_fecha_registro='"
                    + temp.getVehiculo_fecha_registro()
                    + "' WHERE vehiculo_id = '"
                    + temp.getVehiculo_id()
                    + "'");
        } catch (Exception e) {
        }
    }
    
    
    /*eliminar */
   public void eliminar(int id_temp){
        try {
            con2.getSt().executeUpdate("delete from vehiculo where vehiculo_id="+id_temp );
        } catch (Exception e) {}
    }
    
}
