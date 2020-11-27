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
public class distrito {
    /*CREATE TABLE  distritos (
  id_distrito int NOT NULL,
  desdist varchar(50) NOT NULL,
  coddis char(6) NOT NULL,
  provincia_id int NOT NULL,
  PRIMARY KEY (id_distrito),
  FOREIGN KEY (provincia_id) REFERENCES provincias(provincia_id)
)*/
    
    private int id_distrito;
    private String desdist,coddis;
    private int distrito_provincias;
    
    private provincia FK_distrito_provincias;
    
     private int provincia_id;
    private String despro,codpro;
    private int provincia_departamento;
    private departamento FK_provincia_departamento;
     private int departamento_id;
    private String coddep, desdep;

    public distrito() {
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
    }

    public distrito(int id_distrito, String desdist, String coddis, int distrito_provincias, provincia FK_distrito_provincias, int provincia_id, String despro, String codpro, int provincia_departamento, departamento FK_provincia_departamento, int departamento_id, String coddep, String desdep) {
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

    public distrito(int id_distrito, String desdist, String coddis, int distrito_provincias, int provincia_id, String despro, String codpro, int provincia_departamento) {
        this.id_distrito = id_distrito;
        this.desdist = desdist;
        this.coddis = coddis;
        this.distrito_provincias = distrito_provincias;
        this.provincia_id = provincia_id;
        this.despro = despro;
        this.codpro = codpro;
        this.provincia_departamento = provincia_departamento;
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
    
    
  
    
    

    
}
