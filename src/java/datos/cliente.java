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
public class cliente {
    private int cliente_id;
    private String cliente_nombre, cliente_apellido, cliente_nacimiento;
    private int cliente_login;
    private login FK_cliente_login;
    private int login_id;
    private String login_correo;
    private String login_contra;
    private String login_tipo;

    public cliente() {
        this.cliente_id = 0;
        this.cliente_nombre = "NN";
        this.cliente_apellido = "NN";
        this.cliente_nacimiento = "NN";
        this.cliente_login = 0;
        this.FK_cliente_login = new login();
        this.login_id = 0;
        this.login_correo = "NN";
        this.login_contra = "NN";
        this.login_tipo = "NN";
    }

    public cliente(int cliente_id, String cliente_nombre, String cliente_apellido, String cliente_nacimiento, int cliente_login, login FK_cliente_login, int login_id, String login_correo, String login_contra, String login_tipo) {
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
    
    /*registrar*/

    public cliente(String cliente_nombre, String cliente_apellido, String cliente_nacimiento, String login_correo, String login_contra) {
        this.cliente_nombre = cliente_nombre;
        this.cliente_apellido = cliente_apellido;
        this.cliente_nacimiento = cliente_nacimiento;
        this.login_correo = login_correo;
        this.login_contra = login_contra;
    }
    
    /*cliente login*/

    public cliente(int cliente_id, String cliente_nombre, String cliente_apellido, String cliente_nacimiento, int cliente_login) {
        this.cliente_id = cliente_id;
        this.cliente_nombre = cliente_nombre;
        this.cliente_apellido = cliente_apellido;
        this.cliente_nacimiento = cliente_nacimiento;
        this.cliente_login = cliente_login;
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
    
    


   
    
}
