/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;
import java.sql.*;
/**
 *
 * @author Reaper
 */
public class conexion {
    private Connection con;
    private Statement st;
    private ResultSet rs;
    private String url;

 
    public conexion() {
         url="jdbc:sqlserver://DESKTOP-CTOMSI0:1433;databaseName=proyecto_final";
        try {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con=DriverManager.getConnection(url,"sa","789521");
            st=con.createStatement();
            System.out.println("Exito");
        } catch (Exception e) {
            System.out.println("Fracaso");
        }
        
      /*
        url="jdbc:sqlserver://LAPTOP-IMQSGCGU:1433;databaseName=proyecto_final";
        try {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con=DriverManager.getConnection(url,"sa","samanamudbartra");
            st=con.createStatement();
            System.out.println("Exito");
        } catch (Exception e) {
            System.out.println("Fracaso");
        }
*/
           
    }
   
    
    
    
    public conexion(String url,String sa,String pas,String dri) {
        this.url=url;
        try {
             Class.forName(dri);
            con=DriverManager.getConnection(url,sa,pas);
            st=con.createStatement();
            System.out.println("Exito");
        } catch (Exception e) {
            System.out.println("Fracaso");
        }        
    }
    public void consulta(String qry){
        try {
            rs=st.executeQuery(qry);
        } catch (Exception e) {
        }
    }
    public conexion(String url) {
        this.url = url;
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Statement getSt() {
        return st;
    }

    public void setSt(Statement st) {
        this.st = st;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

  
    
}
