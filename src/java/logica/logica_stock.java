/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.stock;
import java.util.ArrayList;

/**
 *
 * @author Nicol Samanamud
 */
public class logica_stock {
     public static ArrayList logica_stock = new ArrayList();

    public static int estado;
    private conexion con = new conexion();


      /*CONSULTAR*/
    public void consultar() {
        con.consulta("select * from VistaStock");
        logica_stock.clear();
        try {
            while (con.getRs().next()) {
                stock temp1 = new stock(Integer.parseInt(con.getRs().getString(7)),
                        Integer.parseInt(con.getRs().getString(8)),
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        Float.parseFloat(con.getRs().getString(4)),
                        con.getRs().getString(3),
                        con.getRs().getString(5),
                        con.getRs().getString(6)
                        );
                logica_stock.add(temp1);
            }
        } catch (Exception e) {
        }
    }
      
    /*ACTUALIZAR*/
    public void actualizar(stock temp) {
        /*update stock
set stock_cantidad=60
where stock_id=1*/
        try {
            con.getSt().executeUpdate("update stock set stock_cantidad="
                    + temp.getStock_cantidad()
                    + " where stock_id="
                    + temp.getStock_id()
                    );
        } catch (Exception e) {
        }
    }
}
