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
public class pedido {

    private int pedido_id;
    private int pedido__cliente;
    private cliente FK_pedido__cliente;
    private int cliente_id;
    private String cliente_nombre, cliente_apellido, cliente_nacimiento;
    private int cliente_login;
    private login FK_cliente_login;
    private int login_id;
    private String login_correo;
    private String login_contra;
    private String login_tipo;

    private int pedido_telefono;
    private int pedido_distrito;
    private distrito FK_pedido_distrito;
    private int id_distrito;
    private String desdist, coddis;
    private int distrito_provincias;

    private provincia FK_distrito_provincias;

    private int provincia_id;
    private String despro, codpro;
    private int provincia_departamento;
    private departamento FK_provincia_departamento;
    private int departamento_id;
    private String coddep, desdep;

    private String pedido_ubicacion;
    private float pedido_pago;
    private String pedido_fecha;
    private int pedido_estado;

    public pedido() {
    }

    public pedido(int pedido_id, int pedido__cliente, cliente FK_pedido__cliente, int cliente_id, String cliente_nombre, String cliente_apellido, String cliente_nacimiento, int cliente_login, login FK_cliente_login, int login_id, String login_correo, String login_contra, String login_tipo, int pedido_telefono, int pedido_distrito, distrito FK_pedido_distrito, int id_distrito, String desdist, String coddis, int distrito_provincias, provincia FK_distrito_provincias, int provincia_id, String despro, String codpro, int provincia_departamento, departamento FK_provincia_departamento, int departamento_id, String coddep, String desdep, String pedido_ubicacion, float pedido_pago, String pedido_fecha, int pedido_estado) {
        this.pedido_id = pedido_id;
        this.pedido__cliente = pedido__cliente;
        this.FK_pedido__cliente = FK_pedido__cliente;
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
        this.pedido_telefono = pedido_telefono;
        this.pedido_distrito = pedido_distrito;
        this.FK_pedido_distrito = FK_pedido_distrito;
        this.id_distrito = id_distrito;
        this.desdist = desdist;
        this.coddis = coddis;
        this.distrito_provincias = distrito_provincias;
        this.FK_distrito_provincias = FK_distrito_provincias;
        this.provincia_id = provincia_id;
        this.despro = despro;
        this.codpro = codpro;
        this.provincia_departamento = provincia_departamento;
        this.FK_provincia_departamento = FK_provincia_departamento;
        this.departamento_id = departamento_id;
        this.coddep = coddep;
        this.desdep = desdep;
        this.pedido_ubicacion = pedido_ubicacion;
        this.pedido_pago = pedido_pago;
        this.pedido_fecha = pedido_fecha;
        this.pedido_estado = pedido_estado;
    }

    public pedido(int pedido_id, int pedido__cliente, int pedido_telefono, int pedido_distrito, String pedido_ubicacion, float pedido_pago, String pedido_fecha, int pedido_estado) {
        this.pedido_id = pedido_id;
        this.pedido__cliente = pedido__cliente;
        this.pedido_telefono = pedido_telefono;
        this.pedido_distrito = pedido_distrito;
        this.pedido_ubicacion = pedido_ubicacion;
        this.pedido_pago = pedido_pago;
        this.pedido_fecha = pedido_fecha;
        this.pedido_estado = pedido_estado;
    }

    /*insertar pedido*/
    public pedido(int pedido__cliente, int pedido_telefono, int pedido_distrito, String pedido_ubicacion, float pedido_pago) {
        this.pedido__cliente = pedido__cliente;
        this.pedido_telefono = pedido_telefono;
        this.pedido_distrito = pedido_distrito;
        this.pedido_ubicacion = pedido_ubicacion;
        this.pedido_pago = pedido_pago;

    }
    
    /* ver pedido*/

    public pedido(int pedido_id, int pedido__cliente, String cliente_nombre, String cliente_apellido, int pedido_telefono, int pedido_distrito, String desdist, String despro, String desdep, String pedido_ubicacion, float pedido_pago, String pedido_fecha, int pedido_estado) {
        this.pedido_id = pedido_id;
        this.pedido__cliente = pedido__cliente;
        this.cliente_nombre = cliente_nombre;
        this.cliente_apellido = cliente_apellido;
        this.pedido_telefono = pedido_telefono;
        this.pedido_distrito = pedido_distrito;
        this.desdist = desdist;
        this.despro = despro;
        this.desdep = desdep;
        this.pedido_ubicacion = pedido_ubicacion;
        this.pedido_pago = pedido_pago;
        this.pedido_fecha = pedido_fecha;
        this.pedido_estado = pedido_estado;
    }

    public int getPedido_id() {
        return pedido_id;
    }

    public void setPedido_id(int pedido_id) {
        this.pedido_id = pedido_id;
    }

    public int getPedido__cliente() {
        return pedido__cliente;
    }

    public void setPedido__cliente(int pedido__cliente) {
        this.pedido__cliente = pedido__cliente;
    }

    public cliente getFK_pedido__cliente() {
        return FK_pedido__cliente;
    }

    public void setFK_pedido__cliente(cliente FK_pedido__cliente) {
        this.FK_pedido__cliente = FK_pedido__cliente;
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

    public int getPedido_telefono() {
        return pedido_telefono;
    }

    public void setPedido_telefono(int pedido_telefono) {
        this.pedido_telefono = pedido_telefono;
    }

    public int getPedido_distrito() {
        return pedido_distrito;
    }

    public void setPedido_distrito(int pedido_distrito) {
        this.pedido_distrito = pedido_distrito;
    }

    public distrito getFK_pedido_distrito() {
        return FK_pedido_distrito;
    }

    public void setFK_pedido_distrito(distrito FK_pedido_distrito) {
        this.FK_pedido_distrito = FK_pedido_distrito;
    }

    public int getId_distrito() {
        return id_distrito;
    }

    public void setId_distrito(int id_distrito) {
        this.id_distrito = id_distrito;
    }

    public String getDesdist() {
        return desdist;
    }

    public void setDesdist(String desdist) {
        this.desdist = desdist;
    }

    public String getCoddis() {
        return coddis;
    }

    public void setCoddis(String coddis) {
        this.coddis = coddis;
    }

    public int getDistrito_provincias() {
        return distrito_provincias;
    }

    public void setDistrito_provincias(int distrito_provincias) {
        this.distrito_provincias = distrito_provincias;
    }

    public provincia getFK_distrito_provincias() {
        return FK_distrito_provincias;
    }

    public void setFK_distrito_provincias(provincia FK_distrito_provincias) {
        this.FK_distrito_provincias = FK_distrito_provincias;
    }

    public int getProvincia_id() {
        return provincia_id;
    }

    public void setProvincia_id(int provincia_id) {
        this.provincia_id = provincia_id;
    }

    public String getDespro() {
        return despro;
    }

    public void setDespro(String despro) {
        this.despro = despro;
    }

    public String getCodpro() {
        return codpro;
    }

    public void setCodpro(String codpro) {
        this.codpro = codpro;
    }

    public int getProvincia_departamento() {
        return provincia_departamento;
    }

    public void setProvincia_departamento(int provincia_departamento) {
        this.provincia_departamento = provincia_departamento;
    }

    public departamento getFK_provincia_departamento() {
        return FK_provincia_departamento;
    }

    public void setFK_provincia_departamento(departamento FK_provincia_departamento) {
        this.FK_provincia_departamento = FK_provincia_departamento;
    }

    public int getDepartamento_id() {
        return departamento_id;
    }

    public void setDepartamento_id(int departamento_id) {
        this.departamento_id = departamento_id;
    }

    public String getCoddep() {
        return coddep;
    }

    public void setCoddep(String coddep) {
        this.coddep = coddep;
    }

    public String getDesdep() {
        return desdep;
    }

    public void setDesdep(String desdep) {
        this.desdep = desdep;
    }

    public String getPedido_ubicacion() {
        return pedido_ubicacion;
    }

    public void setPedido_ubicacion(String pedido_ubicacion) {
        this.pedido_ubicacion = pedido_ubicacion;
    }

    public float getPedido_pago() {
        return pedido_pago;
    }

    public void setPedido_pago(float pedido_pago) {
        this.pedido_pago = pedido_pago;
    }

    public String getPedido_fecha() {
        return pedido_fecha;
    }

    public void setPedido_fecha(String pedido_fecha) {
        this.pedido_fecha = pedido_fecha;
    }

    public int getPedido_estado() {
        return pedido_estado;
    }

    public void setPedido_estado(int pedido_estado) {
        this.pedido_estado = pedido_estado;
    }
    
    
    
    
    
    

}
