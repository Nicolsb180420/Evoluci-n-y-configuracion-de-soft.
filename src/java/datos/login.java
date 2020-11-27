/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author bryan
 */
public class login {
    
    private int login_id;
    private String login_correo;
    private String login_contra;
    private String login_tipo;

    public login() {
        this.login_id = 0;
        this.login_correo = "NN";
        this.login_contra = "NN";
        this.login_tipo = "NN";
    }

    public login(int login_id, String login_correo, String login_contra, String login_tipo) {
        this.login_id = login_id;
        this.login_correo = login_correo;
        this.login_contra = login_contra;
        this.login_tipo = login_tipo;
    }
/*validar correo*/
    public login(String login_correo) {
        this.login_correo = login_correo;
    }

    public login(int login_id, String login_contra) {
        this.login_id = login_id;
        this.login_contra = login_contra;
    }

    public login(int login_id, String login_correo, String login_contra) {
        this.login_id = login_id;
        this.login_correo = login_correo;
        this.login_contra = login_contra;
    }

    
    public String getLogin_tipo() {
        return login_tipo;
    }

    public void setLogin_tipo(String login_tipo) {
        this.login_tipo = login_tipo;
    }

    public int getLogin_id() {
        return login_id;
    }

    public void setLogin_id(int login_id) {
        this.login_id = login_id;
    }

    public String getLogin_correo() {
        return login_correo;
    }

    public void setLogin_correo(String login_correo) {
        this.login_correo = login_correo;
    }

    public String getLogin_contra() {
        return login_contra;
    }

    public void setLogin_contra(String login_contra) {
        this.login_contra = login_contra;
    }
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
}
