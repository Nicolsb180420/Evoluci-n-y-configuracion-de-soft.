/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author Nicol Samanamud
 */
public class categoria {
    private int categoria_id;
    private String categoria_nombre;

    public categoria() {
        this.categoria_id = 0;
        this.categoria_nombre = "NN";
    }

    public categoria(int categoria_id, String categoria_nombre) {
        this.categoria_id = categoria_id;
        this.categoria_nombre = categoria_nombre;
    }

    public int getCategoria_id() {
        return categoria_id;
    }

    public void setCategoria_id(int categoria_id) {
        this.categoria_id = categoria_id;
    }

    public String getCategoria_nombre() {
        return categoria_nombre;
    }

    public void setCategoria_nombre(String categoria_nombre) {
        this.categoria_nombre = categoria_nombre;
    }
    
}
