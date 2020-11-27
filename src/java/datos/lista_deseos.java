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
public class lista_deseos {
    private int lista_deseos_id;
    private int lista_deseos_cliente;
    private int lista_deseos_producto;
    private producto FK_producto;
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
    private cliente FK_cliente;
    private int cliente_id;
    private String cliente_nombre, cliente_apellido, cliente_nacimiento;
    private int cliente_login;
    private login FK_cliente_login;
    private int login_id;
    private String login_correo;
    private String login_contra;
    private String login_tipo;

    public lista_deseos() {
    }

    public lista_deseos(int lista_deseos_id, int lista_deseos_cliente, int lista_deseos_producto, producto FK_producto, int producto_id, String producto_nombre, float producto_precio, String producto_caracteristica, String producto_descripcion, int producto_categoria, categoria FK_producto_categoria, int categoria_id, String categoria_nombre, String producto_peso, String producto_tipo_peso, String producto_imagen, int producto_valoracion, cliente FK_cliente, int cliente_id, String cliente_nombre, String cliente_apellido, String cliente_nacimiento, int cliente_login, login FK_cliente_login, int login_id, String login_correo, String login_contra, String login_tipo) {
        this.lista_deseos_id = lista_deseos_id;
        this.lista_deseos_cliente = lista_deseos_cliente;
        this.lista_deseos_producto = lista_deseos_producto;
        this.FK_producto = FK_producto;
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
        this.FK_cliente = FK_cliente;
        this.cliente_id = cliente_id;
        this.cliente_nombre = cliente_nombre;
        this.cliente_apellido = cliente_apellido;
        this.cliente_nacimiento = cliente_nacimiento;
        this.cliente_login = cliente_login;
        this.FK_cliente_login = FK_cliente_login;
        this.login_id = login_id;
        this.login_correo = login_correo;
        this.login_contra = login_contra;
        this.login_tipo = login_tipo;
    }

    public lista_deseos(int lista_deseos_id, int lista_deseos_cliente, int lista_deseos_producto) {
        this.lista_deseos_id = lista_deseos_id;
        this.lista_deseos_cliente = lista_deseos_cliente;
        this.lista_deseos_producto = lista_deseos_producto;
    }

    public lista_deseos(int lista_deseos_cliente, int lista_deseos_producto) {
        this.lista_deseos_cliente = lista_deseos_cliente;
        this.lista_deseos_producto = lista_deseos_producto;
    }
    
    public lista_deseos(int producto_id, String producto_nombre, String producto_descripcion, String producto_imagen) {
        this.producto_id = producto_id;
        this.producto_nombre = producto_nombre;
        this.producto_descripcion = producto_descripcion;
        this.producto_imagen = producto_imagen;
    }

    public lista_deseos(int lista_deseos_id, int producto_id, String producto_nombre, float producto_precio, String producto_descripcion, String categoria_nombre, String producto_imagen, int cliente_id) {
        this.lista_deseos_id = lista_deseos_id;
        this.producto_id = producto_id;
        this.producto_nombre = producto_nombre;
        this.producto_precio = producto_precio;
        this.producto_descripcion = producto_descripcion;
        this.categoria_nombre = categoria_nombre;
        this.producto_imagen = producto_imagen;
        this.cliente_id = cliente_id;
    }
    

    public cliente getFK_cliente() {
        return FK_cliente;
    }

    public void setFK_cliente(cliente FK_cliente) {
        this.FK_cliente = FK_cliente;
    }

    public int getCliente_id() {
        return cliente_id;
    }

    public void setCliente_id(int cliente_id) {
        this.cliente_id = cliente_id;
    }

    public String getCliente_nombre() {
        return cliente_nombre;
    }

    public void setCliente_nombre(String cliente_nombre) {
        this.cliente_nombre = cliente_nombre;
    }

    public String getCliente_apellido() {
        return cliente_apellido;
    }

    public void setCliente_apellido(String cliente_apellido) {
        this.cliente_apellido = cliente_apellido;
    }

    public String getCliente_nacimiento() {
        return cliente_nacimiento;
    }

    public void setCliente_nacimiento(String cliente_nacimiento) {
        this.cliente_nacimiento = cliente_nacimiento;
    }

    public int getCliente_login() {
        return cliente_login;
    }

    public void setCliente_login(int cliente_login) {
        this.cliente_login = cliente_login;
    }

    public login getFK_cliente_login() {
        return FK_cliente_login;
    }

    public void setFK_cliente_login(login FK_cliente_login) {
        this.FK_cliente_login = FK_cliente_login;
    }

    public int getLogin_id() {
        return login_id;
    }

    public void setLogin_id(int login_id) {
        this.login_id = login_id;
    }

    public String getLogin_correo() {
        return login_correo;
    }

    public void setLogin_correo(String login_correo) {
        this.login_correo = login_correo;
    }

    public String getLogin_contra() {
        return login_contra;
    }

    public void setLogin_contra(String login_contra) {
        this.login_contra = login_contra;
    }

    public String getLogin_tipo() {
        return login_tipo;
    }

    public void setLogin_tipo(String login_tipo) {
        this.login_tipo = login_tipo;
    }
    
    

    public producto getFK_producto() {
        return FK_producto;
    }

    public void setFK_producto(producto FK_producto) {
        this.FK_producto = FK_producto;
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

    public int getProducto_valoracion() {
        return producto_valoracion;
    }

    public void setProducto_valoracion(int producto_valoracion) {
        this.producto_valoracion = producto_valoracion;
    }
    
    

    public int getLista_deseos_producto() {
        return lista_deseos_producto;
    }

    public void setLista_deseos_producto(int lista_deseos_producto) {
        this.lista_deseos_producto = lista_deseos_producto;
    }

    public int getLista_deseos_id() {
        return lista_deseos_id;
    }

    public void setLista_deseos_id(int lista_deseos_id) {
        this.lista_deseos_id = lista_deseos_id;
    }

    public int getLista_deseos_cliente() {
        return lista_deseos_cliente;
    }

    public void setLista_deseos_cliente(int lista_deseos_cliente) {
        this.lista_deseos_cliente = lista_deseos_cliente;
    }
    
    
    
    
    
}
