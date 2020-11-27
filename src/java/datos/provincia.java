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
public class provincia {
    /*CREATE TABLE provincias (
  provincia_id int NOT NULL ,
  despro varchar(50) NOT NULL,
  codpro char(4) NOT NULL,
  departamento_id int NOT NULL,
  PRIMARY KEY (provincia_id),
  FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
) */
    
    private int provincia_id;
    private String despro,codpro;
    private int provincia_departamento;
    private departamento FK_provincia_departamento;
     private int departamento_id;
    private String coddep, desdep;

    public provincia() {
        this.provincia_id = 0;
        this.despro = "NN";
        this.codpro = "NN";
        this.provincia_departamento = 0;
        this.FK_provincia_departamento = new departamento();
        this.departamento_id = 0;
        this.coddep = "NN";
        this.desdep = "NN";
       
    }

    public provincia(int provincia_id, String despro, String codpro, int provincia_departamento, departamento FK_provincia_departamento, int departamento_id, String coddep, String desdep) {
        this.provincia_id = provincia_id;
        this.despro = despro;
        this.codpro = codpro;
        this.provincia_departamento = provincia_departamento;
        this.FK_provincia_departamento = FK_provincia_departamento;
        this.departamento_id = departamento_id;
        this.coddep = coddep;
        this.desdep = desdep;
    }

    public provincia(int provincia_id, String despro, String codpro, int provincia_departamento, int departamento_id, String coddep, String desdep) {
        this.provincia_id = provincia_id;
        this.despro = despro;
        this.codpro = codpro;
        this.provincia_departamento = provincia_departamento;
        this.departamento_id = departamento_id;
        this.coddep = coddep;
        this.desdep = desdep;
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
