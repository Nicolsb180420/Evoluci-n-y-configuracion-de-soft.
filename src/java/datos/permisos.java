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
public class permisos {
    
    private int  permisos_id;
    private String permisos_nombre;
    private String permisos_descripcion;

    public permisos() {
    }

    public permisos(int permisos_id, String permisos_nombre, String permisos_descripcion) {
        this.permisos_id = permisos_id;
        this.permisos_nombre = permisos_nombre;
        this.permisos_descripcion = permisos_descripcion;
    }

    public int getPermisos_id() {
        return permisos_id;
    }

    public void setPermisos_id(int permisos_id) {
        this.permisos_id = permisos_id;
    }

    public String getPermisos_nombre() {
        return permisos_nombre;
    }

    public void setPermisos_nombre(String permisos_nombre) {
        this.permisos_nombre = permisos_nombre;
    }

    public String getPermisos_descripcion() {
        return permisos_descripcion;
    }

    public void setPermisos_descripcion(String permisos_descripcion) {
        this.permisos_descripcion = permisos_descripcion;
    }

    
    
}
