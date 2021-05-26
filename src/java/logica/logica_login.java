/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.login;
import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_login {

    public static ArrayList logica_login = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    public void validar_email() {
        con.consulta("select (login_correo) from login");
        logica_login.clear();
        try {
            while (con.getRs().next()) {
                login temp = new login(
                        con.getRs().getString(1));

                logica_login.add(temp);
            }
        } catch (Exception e) {
        }
    }

    /*select *from login where login_correo='jhonny@gmail.com' and login_contra='jhonny'*/
      public void buscar_email(String correo,String contra) {
        con.consulta("select *from login where login_correo='"+correo+"' and login_contra='"+contra+"';");
        logica_login.clear();
        try {
            while (con.getRs().next()) {
                login temp = new login(
                       Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4));

                logica_login.add(temp);
            }
        } catch (Exception e) {
        }
    }
    
      /*CONSULTAR*/
    public void consultar() {
        con.consulta("select * from login");
        logica_login.clear();
        try {
            while (con.getRs().next()) {
                login temp1 = new login(Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3)
                        );
                logica_login.add(temp1);
            }
        } catch (Exception e) {
        }
    }
      
    /*ACTUALIZAR*/
    public void actualizar1(login temp) {
        /*update login
set login_contra='ejemplo'
where login_id=1*/
        try {
            con.getSt().executeUpdate("update login set login_contra='"
                    + temp.getLogin_contra()
                    + "' where login_id="
                    + temp.getLogin_id()
                    );
        } catch (Exception e) {
        }
    }
}
