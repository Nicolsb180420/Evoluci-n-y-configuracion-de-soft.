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
public class puesto_permisos {
    private int puesto_permisos_id;
    private int puesto_permisos_puesto;
    private puesto FK_puesto_permisos_puesto;
     private int puesto_id;
    private String puesto_nombre;
    private String puesto_descripcion;
   
    private int puesto_permisos_permisos;
    private permisos FK_puesto_permisos_permisos;
     private int  permisos_id;
    private String permisos_nombre;
    private String permisos_descripcion;

    public puesto_permisos() {
    }

    public puesto_permisos(int puesto_permisos_id, int puesto_permisos_puesto, puesto FK_puesto_permisos_puesto, int puesto_id, String puesto_nombre, String puesto_descripcion, int puesto_permisos_permisos, permisos FK_puesto_permisos_permisos, int permisos_id, String permisos_nombre, String permisos_descripcion) {
        this.puesto_permisos_id = puesto_permisos_id;
        this.puesto_permisos_puesto = puesto_permisos_puesto;
        this.FK_puesto_permisos_puesto = FK_puesto_permisos_puesto;
        this.puesto_id = puesto_id;
        this.puesto_nombre = puesto_nombre;
        this.puesto_descripcion = puesto_descripcion;
        this.puesto_permisos_permisos = puesto_permisos_permisos;
        this.FK_puesto_permisos_permisos = FK_puesto_permisos_permisos;
        this.permisos_id = permisos_id;
        this.permisos_nombre = permisos_nombre;
        this.permisos_descripcion = permisos_descripcion;
    }

    /*mostrar permisos*/

    public puesto_permisos(int puesto_permisos_id, int puesto_permisos_puesto, int puesto_permisos_permisos) {
        this.puesto_permisos_id = puesto_permisos_id;
        this.puesto_permisos_puesto = puesto_permisos_puesto;
        this.puesto_permisos_permisos = puesto_permisos_permisos;
    }
        
    
    
    public int getPuesto_permisos_id() {
        return puesto_permisos_id;
    }

    public void setPuesto_permisos_id(int puesto_permisos_id) {
        this.puesto_permisos_id = puesto_permisos_id;
    }

    public int getPuesto_permisos_puesto() {
        return puesto_permisos_puesto;
    }

    public void setPuesto_permisos_puesto(int puesto_permisos_puesto) {
        this.puesto_permisos_puesto = puesto_permisos_puesto;
    }

    public int getPuesto_permisos_permisos() {
        return puesto_permisos_permisos;
    }

    public void setPuesto_permisos_permisos(int puesto_permisos_permisos) {
        this.puesto_permisos_permisos = puesto_permisos_permisos;
    }

    public puesto getFK_puesto_permisos_puesto() {
        return FK_puesto_permisos_puesto;
    }

    public void setFK_puesto_permisos_puesto(puesto FK_puesto_permisos_puesto) {
        this.FK_puesto_permisos_puesto = FK_puesto_permisos_puesto;
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

    public String getPuesto_descripcion() {
        return puesto_descripcion;
    }

    public void setPuesto_descripcion(String puesto_descripcion) {
        this.puesto_descripcion = puesto_descripcion;
    }

    public permisos getFK_puesto_permisos_permisos() {
        return FK_puesto_permisos_permisos;
    }

    public void setFK_puesto_permisos_permisos(permisos FK_puesto_permisos_permisos) {
        this.FK_puesto_permisos_permisos = FK_puesto_permisos_permisos;
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
