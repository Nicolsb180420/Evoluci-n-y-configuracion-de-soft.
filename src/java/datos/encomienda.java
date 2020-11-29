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
public class encomienda {

    private int encomienda;
    private int encomienda_vehiculo;
    private int encomienda_distrito;
    private String encomienda_fecha;
    private int encomienda_estado;
    private vehiculo FK_vehiculo;
    private int vehiculo_id;
    private String vehiculo_placa, vehiculo_marca, vehiculo_modelo, vehiculo_capCarga, vehiculo_fecha_registro;
    private distrito FK_distrito;
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

    public encomienda() {
    }
    
    public encomienda(int encomienda, int encomienda_vehiculo, int encomienda_distrito, String encomienda_fecha, int encomienda_estado, vehiculo FK_vehiculo, int vehiculo_id, String vehiculo_placa, String vehiculo_marca, String vehiculo_modelo, String vehiculo_capCarga, String vehiculo_fecha_registro, distrito FK_distrito, int id_distrito, String desdist, String coddis, int distrito_provincias, provincia FK_distrito_provincias, int provincia_id, String despro, String codpro, int provincia_departamento, departamento FK_provincia_departamento, int departamento_id, String coddep, String desdep) {
        this.encomienda = encomienda;
        this.encomienda_vehiculo = encomienda_vehiculo;
        this.encomienda_distrito = encomienda_distrito;
        this.encomienda_fecha = encomienda_fecha;
        this.encomienda_estado = encomienda_estado;
        this.FK_vehiculo = FK_vehiculo;
        this.vehiculo_id = vehiculo_id;
        this.vehiculo_placa = vehiculo_placa;
        this.vehiculo_marca = vehiculo_marca;
        this.vehiculo_modelo = vehiculo_modelo;
        this.vehiculo_capCarga = vehiculo_capCarga;
        this.vehiculo_fecha_registro = vehiculo_fecha_registro;
        this.FK_distrito = FK_distrito;
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
    }

    public encomienda(int encomienda, int encomienda_vehiculo, String encomienda_fecha, int encomienda_estado, String vehiculo_placa, String desdist, String despro, String desdep) {
        this.encomienda = encomienda;
        this.encomienda_vehiculo = encomienda_vehiculo;
        this.encomienda_fecha = encomienda_fecha;
        this.encomienda_estado = encomienda_estado;
        this.vehiculo_placa = vehiculo_placa;
        this.desdist = desdist;
        this.despro = despro;
        this.desdep = desdep;
    }
    
    /*insertar*/
    public encomienda(int encomienda_vehiculo, int encomienda_distrito) {
        this.encomienda_vehiculo = encomienda_vehiculo;
        this.encomienda_distrito = encomienda_distrito;
    }

    public encomienda(int encomienda, int encomienda_vehiculo, int encomienda_distrito, String encomienda_fecha, int encomienda_estado) {
        this.encomienda = encomienda;
        this.encomienda_vehiculo = encomienda_vehiculo;
        this.encomienda_distrito = encomienda_distrito;
        this.encomienda_fecha = encomienda_fecha;
        this.encomienda_estado = encomienda_estado;
    }

    public vehiculo getFK_vehiculo() {
        return FK_vehiculo;
    }

    public void setFK_vehiculo(vehiculo FK_vehiculo) {
        this.FK_vehiculo = FK_vehiculo;
    }

    public int getVehiculo_id() {
        return vehiculo_id;
    }

    public void setVehiculo_id(int vehiculo_id) {
        this.vehiculo_id = vehiculo_id;
    }

    public String getVehiculo_placa() {
        return vehiculo_placa;
    }

    public void setVehiculo_placa(String vehiculo_placa) {
        this.vehiculo_placa = vehiculo_placa;
    }

    public String getVehiculo_marca() {
        return vehiculo_marca;
    }

    public void setVehiculo_marca(String vehiculo_marca) {
        this.vehiculo_marca = vehiculo_marca;
    }

    public String getVehiculo_modelo() {
        return vehiculo_modelo;
    }

    public void setVehiculo_modelo(String vehiculo_modelo) {
        this.vehiculo_modelo = vehiculo_modelo;
    }

    public String getVehiculo_capCarga() {
        return vehiculo_capCarga;
    }

    public void setVehiculo_capCarga(String vehiculo_capCarga) {
        this.vehiculo_capCarga = vehiculo_capCarga;
    }

    public String getVehiculo_fecha_registro() {
        return vehiculo_fecha_registro;
    }

    public void setVehiculo_fecha_registro(String vehiculo_fecha_registro) {
        this.vehiculo_fecha_registro = vehiculo_fecha_registro;
    }

    public distrito getFK_distrito() {
        return FK_distrito;
    }

    public void setFK_distrito(distrito FK_distrito) {
        this.FK_distrito = FK_distrito;
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

    
    public int getEncomienda() {
        return encomienda;
    }

    public void setEncomienda(int encomienda) {
        this.encomienda = encomienda;
    }

    public int getEncomienda_vehiculo() {
        return encomienda_vehiculo;
    }

    public void setEncomienda_vehiculo(int encomienda_vehiculo) {
        this.encomienda_vehiculo = encomienda_vehiculo;
    }

    public int getEncomienda_distrito() {
        return encomienda_distrito;
    }

    public void setEncomienda_distrito(int encomienda_distrito) {
        this.encomienda_distrito = encomienda_distrito;
    }

    public String getEncomienda_fecha() {
        return encomienda_fecha;
    }

    public void setEncomienda_fecha(String encomienda_fecha) {
        this.encomienda_fecha = encomienda_fecha;
    }

    public int getEncomienda_estado() {
        return encomienda_estado;
    }

    public void setEncomienda_estado(int encomienda_estado) {
        this.encomienda_estado = encomienda_estado;
    }

}
