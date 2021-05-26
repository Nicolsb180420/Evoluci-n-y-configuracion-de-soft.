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
public class producto {
    
    private int producto_id;
    private String producto_nombre;
    private float producto_precio;
    private String producto_caracteristica;
    private String producto_descripcion;
    private int producto_categoria;
    private categoria FK_producto_categoria;
     private int categoria_id;
    private String categoria_nombre;
    private String producto_peso;
    private String producto_tipo_peso;
    private String producto_imagen;
    private int producto_valoracion;

    public producto() {
    }

    
    
    public producto(int producto_id, String producto_nombre, float producto_precio, String producto_caracteristica, String producto_descripcion, int producto_categoria, categoria FK_producto_categoria, int categoria_id, String categoria_nombre, String producto_peso, String producto_tipo_peso, String producto_imagen, int producto_valoracion) {
        this.producto_id = producto_id;
        this.producto_nombre = producto_nombre;
        this.producto_precio = producto_precio;
        this.producto_caracteristica = producto_caracteristica;
        this.producto_descripcion = producto_descripcion;
        this.producto_categoria = producto_categoria;
        this.FK_producto_categoria = FK_producto_categoria;
        this.categoria_id = categoria_id;
        this.categoria_nombre = categoria_nombre;
        this.producto_peso = producto_peso;
        this.producto_tipo_peso = producto_tipo_peso;
        this.producto_imagen = producto_imagen;
        this.producto_valoracion = producto_valoracion;
    }

    public producto(int producto_id, String producto_nombre, float producto_precio, String producto_caracteristica, String producto_descripcion, int categoria_id, String producto_peso, String producto_tipo_peso, String producto_imagen, int producto_valoracion) {
        this.producto_id = producto_id;
        this.producto_nombre = producto_nombre;
        this.producto_precio = producto_precio;
        this.producto_caracteristica = producto_caracteristica;
        this.producto_descripcion = producto_descripcion;
        this.categoria_id = categoria_id;
        this.producto_peso = producto_peso;
        this.producto_tipo_peso = producto_tipo_peso;
        this.producto_imagen = producto_imagen;
        this.producto_valoracion = producto_valoracion;
    }

    public producto(int producto_id, String producto_nombre, float producto_precio, String producto_caracteristica, String producto_descripcion, int producto_categoria, int categoria_id, String categoria_nombre, String producto_peso, String producto_tipo_peso, String producto_imagen, int producto_valoracion) {
        this.producto_id = producto_id;
        this.producto_nombre = producto_nombre;
        this.producto_precio = producto_precio;
        this.producto_caracteristica = producto_caracteristica;
        this.producto_descripcion = producto_descripcion;
        this.producto_categoria = producto_categoria;
        this.categoria_id = categoria_id;
        this.categoria_nombre = categoria_nombre;
        this.producto_peso = producto_peso;
        this.producto_tipo_peso = producto_tipo_peso;
        this.producto_imagen = producto_imagen;
        this.producto_valoracion = producto_valoracion;
    }

    public producto(int producto_id, String producto_nombre, String producto_descripcion, String producto_imagen) {
        this.producto_id = producto_id;
        this.producto_nombre = producto_nombre;
        this.producto_descripcion = producto_descripcion;
        this.producto_imagen = producto_imagen;
    }

    public producto(int producto_id, String producto_nombre) {
        this.producto_id = producto_id;
        this.producto_nombre = producto_nombre;
    }

    public producto(int producto_id, String producto_nombre, String producto_descripcion, String producto_imagen, int producto_valoracion) {
        this.producto_id = producto_id;
        this.producto_nombre = producto_nombre;
        this.producto_descripcion = producto_descripcion;
        this.producto_imagen = producto_imagen;
        this.producto_valoracion = producto_valoracion;
    }
    
    
    

    public int getProducto_valoracion() {
        return producto_valoracion;
    }

    public void setProducto_valoracion(int producto_valoracion) {
        this.producto_valoracion = producto_valoracion;
    }

    public int getProducto_id() {
        return producto_id;
    }

    public void setProducto_id(int producto_id) {
        this.producto_id = producto_id;
    }

    public String getProducto_nombre() {
        return producto_nombre;
    }

    public void setProducto_nombre(String producto_nombre) {
        this.producto_nombre = producto_nombre;
    }

    public float getProducto_precio() {
        return producto_precio;
    }

    public void setProducto_precio(float producto_precio) {
        this.producto_precio = producto_precio;
    }

    public String getProducto_caracteristica() {
        return producto_caracteristica;
    }

    public void setProducto_caracteristica(String producto_caracteristica) {
        this.producto_caracteristica = producto_caracteristica;
    }

    public String getProducto_descripcion() {
        return producto_descripcion;
    }

    public void setProducto_descripcion(String producto_descripcion) {
        this.producto_descripcion = producto_descripcion;
    }

    public int getProducto_categoria() {
        return producto_categoria;
    }

    public void setProducto_categoria(int producto_categoria) {
        this.producto_categoria = producto_categoria;
    }

    public String getProducto_peso() {
        return producto_peso;
    }

    public void setProducto_peso(String producto_peso) {
        this.producto_peso = producto_peso;
    }

    public String getProducto_tipo_peso() {
        return producto_tipo_peso;
    }

    public void setProducto_tipo_peso(String producto_tipo_peso) {
        this.producto_tipo_peso = producto_tipo_peso;
    }

    public String getProducto_imagen() {
        return producto_imagen;
    }

    public void setProducto_imagen(String producto_imagen) {
        this.producto_imagen = producto_imagen;
    }

    public categoria getFK_producto_categoria() {
        return FK_producto_categoria;
    }

    public void setFK_producto_categoria(categoria FK_producto_categoria) {
        this.FK_producto_categoria = FK_producto_categoria;
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
