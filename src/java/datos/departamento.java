/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;


/**
 *
 * @author Nicol Samanamud
 */
public class departamento {
    /*CREATE TABLE  departamentos (
  departamento_id int NOT NULL,
  coddep char(2) NOT NULL,
  desdep varchar(50) NOT NULL,
  PRIMARY KEY (departamento_id)
)*/
    private int departamento_id;
    private String coddep, desdep;

    public departamento(String desdep) {
        this.desdep = desdep;
    }

    public departamento(int departamento_id, String desdep) {
        this.departamento_id = departamento_id;
        this.desdep = desdep;
    }
    

    public departamento() {
        this.departamento_id = 0;
        this.coddep = "NN";
        this.desdep = "NN";
    }

    public departamento(int departamento_id, String coddep, String desdep) {
        this.departamento_id = departamento_id;
        this.coddep = coddep;
        this.desdep = desdep;
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

    @Override
    public String toString() {
        return "departamento{" + "departamento_id=" + departamento_id + ", coddep=" + coddep + ", desdep=" + desdep + '}';
    }
    
  
}
