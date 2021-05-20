/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.proveedor;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author Nicol Samanamud
 */
public class logica_proveedor {
    public static ArrayList Lproveedores= new ArrayList();
    public static int estado;
    private conexion con2 = new conexion();
    
     public String hallar_fecha() {

        Calendar fecha = Calendar.getInstance();
        int anio_actual = fecha.get(Calendar.YEAR);
        int mes_actual = fecha.get(Calendar.MONTH) + 1;
        int dia_actual = fecha.get(Calendar.DAY_OF_MONTH);

        return anio_actual + "-" + mes_actual + "-" + dia_actual;

    }
    
    /*CONSULTAR*/
    public void consultar() {
        con2.consulta("select * from VistaProveedores");
        Lproveedores.clear();
        try {
            while (con2.getRs().next()) {
                proveedor temp1 = new proveedor(Integer.parseInt(con2.getRs().getString(1)),
                        con2.getRs().getString(2),
                        con2.getRs().getString(3),
                        con2.getRs().getString(4),
                        con2.getRs().getString(5),
                        con2.getRs().getString(6),
                        con2.getRs().getString(7),
                        con2.getRs().getString(8)
                        );
                Lproveedores.add(temp1);
            }
        } catch (Exception e) {
        }
    }
    
    /*Insertar*/
    public void insertar(proveedor temp) {
        try {
            /*insert into proveedor values ('ejemplo','78965412369',5,'dsadadasf','ejemplo@gmail.com','987569856','2019-06-28')*/
           con2.getSt().executeUpdate("insert into proveedor(proveedor_razon_social,proveedor_ruc,proveedor_distrito,proveedor_direccion,proveedor_email,proveedor_telefono,proveedor_fecha_registro) values ('" + temp.getProveedor_razon_social()
                    + "','" + temp.getProveedor_ruc()
                    + "'," + temp.getId_distrito()
                    + ",'" + temp.getProveedor_direccion()
                    + "','" + temp.getProveedor_email()
                    + "','" + temp.getProveedor_telefono()
                    + "','" + hallar_fecha()
                    + "')");
        } catch (Exception e) {
        }
    }
    
    
    /*ACTUALIZAR*/
    public void actualizar(proveedor temp) {
        /*update proveedor
set proveedor_razon_social='aaa',proveedor_ruc='78965412365',proveedor_distrito=6,proveedor_direccion='afafa',proveedor_email='asd',proveedor_telefono='986958689'
where proveedor_id=15*/
        try {
            con2.getSt().executeUpdate("update proveedor set proveedor_razon_social='"
                    + temp.getProveedor_razon_social()
                    + "',proveedor_ruc='"
                    + temp.getProveedor_ruc()
                    + "',proveedor_distrito="
                    + temp.getId_distrito()
                    + ",proveedor_direccion='"
                    + temp.getProveedor_direccion()
                    + "',proveedor_email='"
                    + temp.getProveedor_email()
                    + "',proveedor_telefono='"
                    + temp.getProveedor_telefono()
                    + "' where proveedor_id="
                    + temp.getProveedor_id()
                    );
        } catch (Exception e) {
        }
    }
    
    
    /*eliminar */
   public void eliminar(int id_temp){
        try {
            con2.getSt().executeUpdate("delete from proveedor where proveedor_id="+id_temp );
        } catch (Exception e) {}
    }
}
