/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author bryan
 */
public class capsula_trabajador {
  
    private int capsula_trabajador_id;
    private int capsula_trabajador_trabajador;
    private int capsula_trabajador_repartidor;

    public capsula_trabajador(int capsula_trabajador_id, int capsula_trabajador_trabajador, int capsula_trabajador_repartidor) {
        this.capsula_trabajador_id = capsula_trabajador_id;
        this.capsula_trabajador_trabajador = capsula_trabajador_trabajador;
        this.capsula_trabajador_repartidor = capsula_trabajador_repartidor;
    }
    
    /*insertar*/

    public capsula_trabajador(int capsula_trabajador_trabajador, int capsula_trabajador_repartidor) {
        this.capsula_trabajador_trabajador = capsula_trabajador_trabajador;
        this.capsula_trabajador_repartidor = capsula_trabajador_repartidor;
    }
    
    
    

    public capsula_trabajador() {
    }

    public int getCapsula_trabajador_id() {
        return capsula_trabajador_id;
    }

    public void setCapsula_trabajador_id(int capsula_trabajador_id) {
        this.capsula_trabajador_id = capsula_trabajador_id;
    }

    public int getCapsula_trabajador_trabajador() {
        return capsula_trabajador_trabajador;
    }

    public void setCapsula_trabajador_trabajador(int capsula_trabajador_trabajador) {
        this.capsula_trabajador_trabajador = capsula_trabajador_trabajador;
    }

    public int getCapsula_trabajador_repartidor() {
        return capsula_trabajador_repartidor;
    }

    public void setCapsula_trabajador_repartidor(int capsula_trabajador_repartidor) {
        this.capsula_trabajador_repartidor = capsula_trabajador_repartidor;
    }
    
    
}
