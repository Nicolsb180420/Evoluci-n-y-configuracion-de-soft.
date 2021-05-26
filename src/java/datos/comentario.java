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
public class comentario {

    private int comentario_id;
    private int comentario_producto;
    private int comentario_cliente;
    private cliente FK_comentario_cliente;
    private int cliente_id;
    private String cliente_nombre, cliente_apellido, cliente_nacimiento;
    private int cliente_login;
    private login FK_cliente_login;
    private int login_id;
    private String login_correo;
    private String login_contra;
    private String login_tipo;

    private String comentario_descripcion;
    private String comentario_fecha;

    public comentario() {
    }

    public comentario(int comentario_id, int comentario_producto, int comentario_cliente, cliente FK_comentario_cliente, int cliente_id, String cliente_nombre, String cliente_apellido, String cliente_nacimiento, int cliente_login, login FK_cliente_login, int login_id, String login_correo, String login_contra, String login_tipo, String comentario_descripcion, String comentario_fecha) {
        this.comentario_id = comentario_id;
        this.comentario_producto = comentario_producto;
        this.comentario_cliente = comentario_cliente;
        this.FK_comentario_cliente = FK_comentario_cliente;
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
        this.comentario_descripcion = comentario_descripcion;
        this.comentario_fecha = comentario_fecha;
    }

    /*ver*/
    public comentario(int comentario_id, int comentario_producto, int comentario_cliente, String cliente_nombre, String cliente_apellido, String comentario_descripcion, String comentario_fecha) {
        this.comentario_id = comentario_id;
        this.comentario_producto = comentario_producto;
        this.comentario_cliente = comentario_cliente;
        this.cliente_nombre = cliente_nombre;
        this.cliente_apellido = cliente_apellido;
        this.comentario_descripcion = comentario_descripcion;
        this.comentario_fecha = comentario_fecha;
    }
    

    /*
    registrar
     */
    
    public comentario(int comentario_producto, int comentario_cliente, String comentario_descripcion) {
        this.comentario_producto = comentario_producto;
        this.comentario_cliente = comentario_cliente;
        this.comentario_descripcion = comentario_descripcion;
    }

    public int getComentario_id() {
        return comentario_id;
    }

    public void setComentario_id(int comentario_id) {
        this.comentario_id = comentario_id;
    }

    public int getComentario_producto() {
        return comentario_producto;
    }

    public void setComentario_producto(int comentario_producto) {
        this.comentario_producto = comentario_producto;
    }

    public int getComentario_cliente() {
        return comentario_cliente;
    }

    public void setComentario_cliente(int comentario_cliente) {
        this.comentario_cliente = comentario_cliente;
    }

    public cliente getFK_comentario_cliente() {
        return FK_comentario_cliente;
    }

    public void setFK_comentario_cliente(cliente FK_comentario_cliente) {
        this.FK_comentario_cliente = FK_comentario_cliente;
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

    public String getComentario_descripcion() {
        return comentario_descripcion;
    }

    public void setComentario_descripcion(String comentario_descripcion) {
        this.comentario_descripcion = comentario_descripcion;
    }

    public String getComentario_fecha() {
        return comentario_fecha;
    }

    public void setComentario_fecha(String comentario_fecha) {
        this.comentario_fecha = comentario_fecha;
    }

}
