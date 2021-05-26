/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.cliente;

import java.util.ArrayList;

/**
 *
 * @author bryan
 */
public class logica_cliente{

    public static ArrayList logica_cliente = new ArrayList();

    public static int estado;
    private conexion con = new conexion();

  
    
    
       /*
go
declare @login_id int 
exec usuario_login 'jhonny@gmail.com','jhonny','cliente',@login_id OUTPUT
insert cliente VALUES('jhonny','suarez','2001-03-19',@login_id)
            
 declare @login_id int exec usuario_login'"+temp.getLogin_correo()+"','"+temp.getLogin_contra()+"','cliente',@login_id OUTPUT"+
"insert cliente VALUES('"+temp.getCliente_nombre()+"','"+temp.getCliente_apellido()+"','"+temp.getCliente_nacimiento()+"',@login_id)

            */
    
    
  
    
    
 public void insertar(cliente temp){
        try {       
            con.getSt().executeUpdate("declare @login_id int exec usuario_login'"+temp.getLogin_correo()+"','"+temp.getLogin_contra()+"','cliente',@login_id OUTPUT" +
" insert cliente VALUES('"+temp.getCliente_nombre()+"','"+temp.getCliente_apellido()+"','"+temp.getCliente_nacimiento()+"',@login_id)"

            );
        } 
        catch (Exception e) {}
    }
   
 /*select *from cliente where cliente_login='1'*/
 
     public void buscar_cliente(int id_login) {
        con.consulta("select *from cliente where cliente_login='"+id_login+"'");
        logica_cliente.clear();
        try {
            while (con.getRs().next()) {
                cliente temp = new cliente(
                       Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                Integer.parseInt(con.getRs().getString(5)));

                logica_cliente.add(temp);
            }
        } catch (Exception e) {
        }
    }
    
 

}



