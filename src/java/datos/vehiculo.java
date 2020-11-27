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
public class vehiculo {
     /*vehiculo_id	int	Unchecked
vehiculo_placa	varchar(50)	Unchecked
vehiculo_marca	varchar(50)	Unchecked
vehiculo_modelo	varchar(50)	Unchecked
vehiculo_capCarga	varchar(50)	Unchecked
vehiculo_fecha_registro	varchar(50)	Unchecked
		Unchecked*/
    
    private int vehiculo_id;
    private String vehiculo_placa,vehiculo_marca,vehiculo_modelo,vehiculo_capCarga,vehiculo_fecha_registro;

    public vehiculo() {
    }

    public vehiculo(int vehiculo_id, String vehiculo_placa, String vehiculo_marca, String vehiculo_modelo, String vehiculo_capCarga, String vehiculo_fecha_registro) {
        this.vehiculo_id = vehiculo_id;
        this.vehiculo_placa = vehiculo_placa;
        this.vehiculo_marca = vehiculo_marca;
        this.vehiculo_modelo = vehiculo_modelo;
        this.vehiculo_capCarga = vehiculo_capCarga;
        this.vehiculo_fecha_registro = vehiculo_fecha_registro;
    }

    public vehiculo(String vehiculo_placa, String vehiculo_marca, String vehiculo_modelo, String vehiculo_capCarga, String vehiculo_fecha_registro) {
        this.vehiculo_placa = vehiculo_placa;
        this.vehiculo_marca = vehiculo_marca;
        this.vehiculo_modelo = vehiculo_modelo;
        this.vehiculo_capCarga = vehiculo_capCarga;
        this.vehiculo_fecha_registro = vehiculo_fecha_registro;
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
    
    
       
}
