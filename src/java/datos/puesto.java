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
public class puesto {
   
    private int puesto_id;
    private String puesto_nombre;
    private String puesto_descripcion;

    public puesto() {
        this.puesto_id = 0;
        this.puesto_nombre = "NN";
        this.puesto_descripcion = "NN";
    }

    public puesto(int puesto_id, String puesto_nombre, String puesto_descripcion) {
        this.puesto_id = puesto_id;
        this.puesto_nombre = puesto_nombre;
        this.puesto_descripcion = puesto_descripcion;
    }

    public String getPuesto_descripcion() {
        return puesto_descripcion;
    }

    public void setPuesto_descripcion(String puesto_descripcion) {
        this.puesto_descripcion = puesto_descripcion;
    }

    public int getPuesto_id() {
        return puesto_id;
    }

    public void setPuesto_id(int puesto_id) {
        this.puesto_id = puesto_id;
    }

    public String getPuesto_nombre() {
        return puesto_nombre;
    }

    public void setPuesto_nombre(String puesto_nombre) {
        this.puesto_nombre = puesto_nombre;
    }
    
    
    
    
}
