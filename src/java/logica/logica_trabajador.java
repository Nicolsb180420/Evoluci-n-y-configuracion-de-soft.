/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.trabajador;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author bryan
 */
public class logica_trabajador {

    public static ArrayList logica_trabajador = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

    public String hallar_fecha() {

        Calendar fecha = Calendar.getInstance();
        int anio_actual = fecha.get(Calendar.YEAR);
        int mes_actual = fecha.get(Calendar.MONTH) + 1;
        int dia_actual = fecha.get(Calendar.DAY_OF_MONTH);

        return anio_actual + "-" + mes_actual + "-" + dia_actual;

    }

    /* public void insertar(trabajador temp) {
        try {
           con.getSt().executeUpdate(
             "insert into trabajador values('" + temp.getTrabajador_nombre() +
             "','"  + temp.getTrabajor_apellido() +
             "','"  + temp.getTrabajador_sexo() +
             "','"  + temp.getTrabajador_nacimiento() +     
             "','"  + temp.getTrabajador_tipo_identidad() +
             "','"  + temp.getTrabajador_numero_identidad() +
             "','"  + temp.getTrabajador_telefono() +    
             "',"  + temp.getId_distrito() +
             ",'"  + temp.getTrabajador_contacto() +
             "','"  + temp.getTrabajador_contacto_telefono() +
             "',"  + temp.getPuesto_id() +
             ",'"  + temp.getTrabajador_correo() +
             "','"  + temp.getTrabajador_contra() +
             "','"  + temp.getTrabajador_dia() + "')"
            );
        } catch (Exception e) {
        }
    }
     */
    public void insertar(trabajador temp) {
        /*declare @login_id int 
exec trabajador_login 'nicol1804@gmail.com','nicollamejor','trabajador',@login_id OUTPUT
insert trabajador VALUES('nicol','samanamud','Femenino','2000-04-18','Dni','74024644','998558558',1,'Harry Styles','987456987',1,@login_id,'2020-03-19')*/
        try {
            con.getSt().executeUpdate(
                    "declare @login_id int exec usuario_login '"+temp.getLogin_correo()
                    +"','"+temp.getLogin_contra()
                    +"','trabajador',@login_id OUTPUT insert trabajador VALUES('"+temp.getTrabajador_nombre()
                    +"','"+temp.getTrabajor_apellido()
                    +"','"+temp.getTrabajador_sexo()
                    +"','"+temp.getTrabajador_nacimiento()
                    +"','"+temp.getTrabajador_tipo_identidad()
                    +"','"+temp.getTrabajador_numero_identidad()
                    +"','"+temp.getTrabajador_telefono()
                    +"',"+temp.getId_distrito()
                    +",'"+temp.getTrabajador_contacto()
                    +"','"+temp.getTrabajador_contacto_telefono()
                    +"',"+temp.getPuesto_id()
                    +",@login_id,'"+hallar_fecha()+"')"
                    
            );
        } catch (Exception e) {
        }
    }
    
    
    
    /*CONSULTAR
    
    create view VistaTrabajador
as
SELECT dbo.trabajador.trabajador_id, dbo.trabajador.trabajador_nombre, dbo.trabajador.trabajador_apellido, dbo.trabajador.trabajador_sexo, dbo.trabajador.trabajador_nacimiento, dbo.trabajador.trabajador_tipo_identidad, 
                  dbo.trabajador.trabajador_numero_identidad, dbo.trabajador.trabajador_telefono, dbo.trabajador.trabajador_contacto, dbo.trabajador.trabajdor_contacto_telefono, dbo.puesto.puesto_nombre, dbo.trabajador.trabajador_dia, 
                  dbo.login.login_id, dbo.login.login_correo, dbo.login.login_contra
FROM     dbo.trabajador INNER JOIN
                  dbo.login ON dbo.trabajador.trabajador_login = dbo.login.login_id INNER JOIN
                  dbo.puesto ON dbo.trabajador.trabajador_puesto = dbo.puesto.puesto_id
    
    
    */
    public void consultar() {
        con.consulta("select * from VistaTrabajador");
        logica_trabajador.clear();
        try {
            while (con.getRs().next()) {
                trabajador temp1 = new trabajador(Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                        con.getRs().getString(5),
                        con.getRs().getString(6),
                        con.getRs().getString(7),
                        con.getRs().getString(8),
                        con.getRs().getString(12),
                        con.getRs().getString(9),
                        con.getRs().getString(10),
                        con.getRs().getString(11),
                        Integer.parseInt(con.getRs().getString(13)),
                        con.getRs().getString(14),
                        con.getRs().getString(15)
                        );
                logica_trabajador.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
   /*ACTUALIZAR*/
    public void actualizar(trabajador temp) {
        /*update trabajador
set trabajador_nombre='qqqqqq',trabajador_apellido='qqqqq',trabajador_sexo='q',trabajador_nacimiento='q',trabajador_tipo_identidad='q',trabajador_numero_identidad='q',
trabajador_telefono='q',trabajador_distrito=1,trabajador_contacto='edq',trabajdor_contacto_telefono='qd',trabajador_puesto=1
where trabajador_id=5*/
        try {
            con.getSt().executeUpdate("update trabajador set trabajador_nombre='"
                    + temp.getTrabajador_nombre()
                    + "',trabajador_apellido='"
                    + temp.getTrabajor_apellido()
                    + "',trabajador_sexo='"
                    + temp.getTrabajador_sexo()
                    + "',trabajador_nacimiento='"
                    + temp.getTrabajador_nacimiento()
                    + "',trabajador_tipo_identidad='"
                    + temp.getTrabajador_tipo_identidad()
                    + "',trabajador_numero_identidad='"
                    + temp.getTrabajador_numero_identidad()
                    + "',trabajador_telefono='"
                    + temp.getTrabajador_telefono()
                    + "',trabajador_distrito="
                    + temp.getId_distrito()
                    + ",trabajador_contacto='"
                    + temp.getTrabajador_contacto()
                    + "',trabajdor_contacto_telefono='"
                    + temp.getTrabajador_contacto_telefono()
                    + "',trabajador_puesto="
                    + temp.getPuesto_id()
                    + "where trabajador_id="
                    + temp.getTrabajador_id()
                    );
        } catch (Exception e) {
        }
    }
    
    
    
    
    
    /*eliminar */
   public void eliminar(int id_temp){
        try {
            con.getSt().executeUpdate("delete from login where login_id="+id_temp );
        } catch (Exception e) {}
    }
   
   /*
   select trabajador_id,trabajador_nombre,trabajador_apellido from trabajador where trabajador_login=6
   */
    public void buscar_codigo_trabajador(int id_login) {
        con.consulta("select trabajador_id,trabajador_nombre,trabajador_apellido,trabajador_puesto from trabajador where trabajador_login='"+id_login+"'");
        logica_trabajador.clear();
        try {
            while (con.getRs().next()) {
                trabajador temp = new trabajador(
                       Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        Integer.parseInt(con.getRs().getString(4))
                    );

                logica_trabajador.add(temp);
            }
        } catch (Exception e) {
        }
    }
    
   
   
}
