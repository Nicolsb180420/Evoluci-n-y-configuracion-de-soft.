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
public class encomienda {
    private int encomienda;
    private int encomienda_vehiculo;
    private int encomienda_distrito;
   private String encomienda_fecha;
    private int encomienda_estado;

  
/*insertar*/
    public encomienda(int encomienda_vehiculo, int encomienda_distrito) {
        this.encomienda_vehiculo = encomienda_vehiculo;
        this.encomienda_distrito = encomienda_distrito;
    }

    public encomienda(int encomienda, int encomienda_vehiculo, int encomienda_distrito, String encomienda_fecha, int encomienda_estado) {
        this.encomienda = encomienda;
        this.encomienda_vehiculo = encomienda_vehiculo;
        this.encomienda_distrito = encomienda_distrito;
        this.encomienda_fecha = encomienda_fecha;
        this.encomienda_estado = encomienda_estado;
    }

    
   
    public encomienda() {
    }

    public int getEncomienda() {
        return encomienda;
    }

    public void setEncomienda(int encomienda) {
        this.encomienda = encomienda;
    }

    public int getEncomienda_vehiculo() {
        return encomienda_vehiculo;
    }

    public void setEncomienda_vehiculo(int encomienda_vehiculo) {
        this.encomienda_vehiculo = encomienda_vehiculo;
    }

    public int getEncomienda_distrito() {
        return encomienda_distrito;
    }

    public void setEncomienda_distrito(int encomienda_distrito) {
        this.encomienda_distrito = encomienda_distrito;
    }

    public String getEncomienda_fecha() {
        return encomienda_fecha;
    }

    public void setEncomienda_fecha(String encomienda_fecha) {
        this.encomienda_fecha = encomienda_fecha;
    }

    public int getEncomienda_estado() {
        return encomienda_estado;
    }

    public void setEncomienda_estado(int encomienda_estado) {
        this.encomienda_estado = encomienda_estado;
    }

   
    
}
