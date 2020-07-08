/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;


import Modelo.Automovel;
import Modelo.ConectaBanco;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;  
import java.sql.SQLException;
import java.util.ArrayList;

public class LocarDAO {
    private Connection conexao;
    private static final String INSERT = "INSERT INTO automovel(fabricante,modelo,ano,cor,status,placa) VALUES (?,?,?,?,?,?)";
    private static final String UPDATE = "UPDATE automovel set fabricante=?,modelo=?,ano=?,cor=?,status=?,placa=? WHERE placa=?";
    private static final String SELECT_ALL = "SELECT * FROM automovel ORDER BY id";
    private static final String SELECT_BY_ID = "SELECT * FROM automovel WHERE id=?";
    private static final String DELETE = "DELETE FROM automovel WHERE ID=?";
    
    public void locar(Automovel locar) {
        try {
            conexao = ConectaBanco.getConexao();

            PreparedStatement pstmt = conexao.prepareStatement(INSERT);
            
            pstmt.setString(1, locar.getFabricante());
            pstmt.setString(2, locar.getModelo());
            pstmt.setString(3, locar.getAno());
            pstmt.setString(4, locar.getCor());
            pstmt.setString(5, locar.getPlaca());
            pstmt.setString(6, locar.getStatus());
            
            pstmt.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {

            try {
                conexao.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
