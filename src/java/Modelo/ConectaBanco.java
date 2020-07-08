/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Wolley
 */
public class ConectaBanco {

    private static Connection conexao;

    public static Connection getConexao() {
        try {

            Class.forName("org.postgresql.Driver");
            conexao = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/dbcliente", "postgres", "postgres");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return conexao;

    }

}
