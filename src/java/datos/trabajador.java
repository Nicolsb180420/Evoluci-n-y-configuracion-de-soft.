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
public class trabajador {

    private int trabajador_id;
    private String trabajador_nombre;
    private String trabajor_apellido;
    private String trabajador_sexo;
    private String trabajador_nacimiento;
    private String trabajador_tipo_identidad;
    private String trabajador_numero_identidad;
    private String trabajador_telefono;
    private String trabajador_dia;

    private int trabajador_distrito;
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

    private String trabajador_contacto;
    private String trabajador_contacto_telefono;
    private int trabajador_puesto;
    private int puesto_id;
    private String puesto_nombre;
    private String puesto_descripcion;

    private login FK_trabajador_login;

    private int login_id;
    
    
    private String login_correo;
    private String login_contra;

    private String login_tipo;

    public trabajador() {
        this.trabajador_id = 0;
        this.trabajador_nombre = "NN";
        this.trabajor_apellido = "NN";
        this.trabajador_sexo = "NN";
        this.trabajador_nacimiento = "NN";
        this.trabajador_tipo_identidad = "NN";
        this.trabajador_numero_identidad = "NN";
        this.trabajador_telefono = "NN";
        this.trabajador_dia = "NN";
        this.trabajador_distrito = 0;
        this.id_distrito = 0;
        this.desdist = "NN";
        this.coddis = "NN";
        this.distrito_provincias = 0;
        this.FK_distrito_provincias = new provincia();
        this.provincia_id = 0;
        this.despro = "NN";
        this.codpro = "NN";
        this.provincia_departamento = 0;
        this.FK_provincia_departamento = new departamento();
        this.departamento_id = 0;
        this.coddep = "NN";
        this.desdep = "NN";
        this.trabajador_contacto = "NN";
        this.trabajador_contacto_telefono = "NN";
        this.trabajador_puesto = 0;
        this.puesto_id = 0;
        this.puesto_nombre = "NN";
        this.puesto_descripcion = "NN";
        this.FK_trabajador_login = new login();
        this.login_id = 0;
        this.login_correo = "NN";
        this.login_contra = "NN";
        this.login_tipo = "NN";
    }

    public trabajador(int trabajador_id, String trabajador_nombre, String trabajor_apellido, String trabajador_sexo, String trabajador_nacimiento, String trabajador_tipo_identidad, String trabajador_numero_identidad, String trabajador_telefono, String trabajador_dia, int trabajador_distrito, int id_distrito, String desdist, String coddis, int distrito_provincias, provincia FK_distrito_provincias, int provincia_id, String despro, String codpro, int provincia_departamento, departamento FK_provincia_departamento, int departamento_id, String coddep, String desdep, String trabajador_contacto, String trabajador_contacto_telefono, int trabajador_puesto, int puesto_id, String puesto_nombre, String puesto_descripcion, login FK_trabajador_login, int login_id, String login_correo, String login_contra, String login_tipo) {
        this.trabajador_id = trabajador_id;
        this.trabajador_nombre = trabajador_nombre;
        this.trabajor_apellido = trabajor_apellido;
        this.trabajador_sexo = trabajador_sexo;
        this.trabajador_nacimiento = trabajador_nacimiento;
        this.trabajador_tipo_identidad = trabajador_tipo_identidad;
        this.trabajador_numero_identidad = trabajador_numero_identidad;
        this.trabajador_telefono = trabajador_telefono;
        this.trabajador_dia = trabajador_dia;
        this.trabajador_distrito = trabajador_distrito;
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
        this.trabajador_contacto = trabajador_contacto;
        this.trabajador_contacto_telefono = trabajador_contacto_telefono;
        this.trabajador_puesto = trabajador_puesto;
        this.puesto_id = puesto_id;
        this.puesto_nombre = puesto_nombre;
        this.puesto_descripcion = puesto_descripcion;
        this.FK_trabajador_login = FK_trabajador_login;
        this.login_id = login_id;
        this.login_correo = login_correo;
        this.login_contra = login_contra;
        this.login_tipo = login_tipo;
    }

    
   
/*registrar*/
    public trabajador(String trabajador_nombre, String trabajor_apellido, String trabajador_sexo, String trabajador_nacimiento, String trabajador_tipo_identidad, String trabajador_numero_identidad, String trabajador_telefono, int id_distrito, String trabajador_contacto, String trabajador_contacto_telefono, int puesto_id, String login_correo, String login_contra) {
        this.trabajador_nombre = trabajador_nombre;
        this.trabajor_apellido = trabajor_apellido;
        this.trabajador_sexo = trabajador_sexo;
        this.trabajador_nacimiento = trabajador_nacimiento;
        this.trabajador_tipo_identidad = trabajador_tipo_identidad;
        this.trabajador_numero_identidad = trabajador_numero_identidad;
        this.trabajador_telefono = trabajador_telefono;

        this.id_distrito = id_distrito;
        this.trabajador_contacto = trabajador_contacto;
        this.trabajador_contacto_telefono = trabajador_contacto_telefono;
        this.puesto_id = puesto_id;
        this.login_correo = login_correo;
        this.login_contra = login_contra;
    }

    
    
    /*listar*/
    public trabajador(int trabajador_id, String trabajador_nombre, String trabajor_apellido, String trabajador_sexo, String trabajador_nacimiento, String trabajador_tipo_identidad, String trabajador_numero_identidad, String trabajador_telefono, String trabajador_dia, String trabajador_contacto, String trabajador_contacto_telefono, String puesto_nombre, int login_id, String login_correo, String login_contra) {
        this.trabajador_id = trabajador_id;
        this.trabajador_nombre = trabajador_nombre;
        this.trabajor_apellido = trabajor_apellido;
        this.trabajador_sexo = trabajador_sexo;
        this.trabajador_nacimiento = trabajador_nacimiento;
        this.trabajador_tipo_identidad = trabajador_tipo_identidad;
        this.trabajador_numero_identidad = trabajador_numero_identidad;
        this.trabajador_telefono = trabajador_telefono;
        this.trabajador_dia = trabajador_dia;
        this.trabajador_contacto = trabajador_contacto;
        this.trabajador_contacto_telefono = trabajador_contacto_telefono;
        this.puesto_nombre = puesto_nombre;
        this.login_id = login_id;
        this.login_correo = login_correo;
        this.login_contra = login_contra;
    }

    public trabajador(int trabajador_id, String trabajador_nombre, String trabajor_apellido, String trabajador_sexo, String trabajador_nacimiento, String trabajador_tipo_identidad, String trabajador_numero_identidad, String trabajador_telefono, int id_distrito, String trabajador_contacto, String trabajador_contacto_telefono, int puesto_id) {
        this.trabajador_id = trabajador_id;
        this.trabajador_nombre = trabajador_nombre;
        this.trabajor_apellido = trabajor_apellido;
        this.trabajador_sexo = trabajador_sexo;
        this.trabajador_nacimiento = trabajador_nacimiento;
        this.trabajador_tipo_identidad = trabajador_tipo_identidad;
        this.trabajador_numero_identidad = trabajador_numero_identidad;
        this.trabajador_telefono = trabajador_telefono;
        this.id_distrito = id_distrito;
        this.trabajador_contacto = trabajador_contacto;
        this.trabajador_contacto_telefono = trabajador_contacto_telefono;
        this.puesto_id = puesto_id;
    }

    public trabajador(int login_id, String login_contra) {
        this.login_id = login_id;
        this.login_contra = login_contra;
    }

    /*codigo de trabajador */

    public trabajador(int trabajador_id, String trabajador_nombre, String trabajor_apellido, int trabajador_puesto) {
        this.trabajador_id = trabajador_id;
        this.trabajador_nombre = trabajador_nombre;
        this.trabajor_apellido = trabajor_apellido;
        this.trabajador_puesto = trabajador_puesto;
    }

 
    
    
    
    
    
    public int getTrabajador_id() {
        return trabajador_id;
    }

    public void setTrabajador_id(int trabajador_id) {
        this.trabajador_id = trabajador_id;
    }

    public String getTrabajador_nombre() {
        return trabajador_nombre;
    }

    public void setTrabajador_nombre(String trabajador_nombre) {
        this.trabajador_nombre = trabajador_nombre;
    }

    public String getTrabajor_apellido() {
        return trabajor_apellido;
    }

    public void setTrabajor_apellido(String trabajor_apellido) {
        this.trabajor_apellido = trabajor_apellido;
    }

    public String getTrabajador_sexo() {
        return trabajador_sexo;
    }

    public void setTrabajador_sexo(String trabajador_sexo) {
        this.trabajador_sexo = trabajador_sexo;
    }

    public String getTrabajador_nacimiento() {
        return trabajador_nacimiento;
    }

    public void setTrabajador_nacimiento(String trabajador_nacimiento) {
        this.trabajador_nacimiento = trabajador_nacimiento;
    }

    public String getTrabajador_tipo_identidad() {
        return trabajador_tipo_identidad;
    }

    public void setTrabajador_tipo_identidad(String trabajador_tipo_identidad) {
        this.trabajador_tipo_identidad = trabajador_tipo_identidad;
    }

    public String getTrabajador_numero_identidad() {
        return trabajador_numero_identidad;
    }

    public void setTrabajador_numero_identidad(String trabajador_numero_identidad) {
        this.trabajador_numero_identidad = trabajador_numero_identidad;
    }

    public String getTrabajador_telefono() {
        return trabajador_telefono;
    }

    public void setTrabajador_telefono(String trabajador_telefono) {
        this.trabajador_telefono = trabajador_telefono;
    }

    public String getTrabajador_dia() {
        return trabajador_dia;
    }

    public void setTrabajador_dia(String trabajador_dia) {
        this.trabajador_dia = trabajador_dia;
    }

    public int getTrabajador_distrito() {
        return trabajador_distrito;
    }

    public void setTrabajador_distrito(int trabajador_distrito) {
        this.trabajador_distrito = trabajador_distrito;
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

    public String getTrabajador_contacto() {
        return trabajador_contacto;
    }

    public void setTrabajador_contacto(String trabajador_contacto) {
        this.trabajador_contacto = trabajador_contacto;
    }

    public String getTrabajador_contacto_telefono() {
        return trabajador_contacto_telefono;
    }

    public void setTrabajador_contacto_telefono(String trabajador_contacto_telefono) {
        this.trabajador_contacto_telefono = trabajador_contacto_telefono;
    }

    public int getTrabajador_puesto() {
        return trabajador_puesto;
    }

    public void setTrabajador_puesto(int trabajador_puesto) {
        this.trabajador_puesto = trabajador_puesto;
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

    public login getFK_trabajador_login() {
        return FK_trabajador_login;
    }

    public void setFK_trabajador_login(login FK_trabajador_login) {
        this.FK_trabajador_login = FK_trabajador_login;
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
