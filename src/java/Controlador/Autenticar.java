/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

/**
 *
 * @author Kervin
 */
public class Autenticar {
    private static  String Usuario="admin";
    private static  String Password="admin";
    
    public static boolean Login(String usuario,String password){
        return usuario.equals(Usuario) && password.equals(Password);
    }
}
