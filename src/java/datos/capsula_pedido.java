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
public class capsula_pedido {
    private int capsula_pedido_id;
    private int capsula_pedido_pedido;
    private int capsula_pedido_trabajador;

    public capsula_pedido() {
    }

    public capsula_pedido(int capsula_pedido_id, int capsula_pedido_pedido, int capsula_pedido_trabajador) {
        this.capsula_pedido_id = capsula_pedido_id;
        this.capsula_pedido_pedido = capsula_pedido_pedido;
        this.capsula_pedido_trabajador = capsula_pedido_trabajador;
    }

    public capsula_pedido(int capsula_pedido_pedido, int capsula_pedido_trabajador) {
        this.capsula_pedido_pedido = capsula_pedido_pedido;
        this.capsula_pedido_trabajador = capsula_pedido_trabajador;
    }
    
    

    public int getCapsula_pedido_trabajador() {
        return capsula_pedido_trabajador;
    }

    public void setCapsula_pedido_trabajador(int capsula_pedido_trabajador) {
        this.capsula_pedido_trabajador = capsula_pedido_trabajador;
    }

    public int getCapsula_pedido_id() {
        return capsula_pedido_id;
    }

    public void setCapsula_pedido_id(int capsula_pedido_id) {
        this.capsula_pedido_id = capsula_pedido_id;
    }

    public int getCapsula_pedido_pedido() {
        return capsula_pedido_pedido;
    }

    public void setCapsula_pedido_pedido(int capsula_pedido_pedido) {
        this.capsula_pedido_pedido = capsula_pedido_pedido;
    }
    
    
    
}
