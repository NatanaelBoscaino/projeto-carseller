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

public class AutomovelDAO {
    private Connection conexao;
    private static final String INSERT = "INSERT INTO automovel(fabricante,modelo,ano,cor,status,placa) VALUES (?,?,?,?,?,?)";
    private static final String UPDATE = "UPDATE automovel set fabricante=?,modelo=?,ano=?,cor=?,status=?,placa=? WHERE placa=?";
    private static final String SELECT_ALL = "SELECT * FROM automovel ORDER BY id";
    private static final String SELECT_BY_ID = "SELECT * FROM automovel WHERE id=?";
    private static final String DELETE = "DELETE FROM automovel WHERE ID=?";
    
    public void cadastrar(Automovel automovel) {
        try {
            conexao = ConectaBanco.getConexao();

            PreparedStatement pstmt = conexao.prepareStatement(INSERT);
            
            pstmt.setString(1, automovel.getFabricante());
            pstmt.setString(2, automovel.getModelo());
            pstmt.setString(3, automovel.getAno());
            pstmt.setString(4, automovel.getCor());
            pstmt.setString(5, automovel.getStatus());
            pstmt.setString(6, automovel.getPlaca());
            
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
    
    public void atualizar(Automovel automovel) {
        try {
            conexao = ConectaBanco.getConexao();

            PreparedStatement pstmt = conexao.prepareStatement(UPDATE);
            
            pstmt.setString(1, automovel.getFabricante());
            pstmt.setString(2, automovel.getModelo());
            pstmt.setString(3, automovel.getAno());
            pstmt.setString(4, automovel.getCor());
            pstmt.setString(5, automovel.getStatus());
            pstmt.setString(6, automovel.getPlaca());
            pstmt.setString(7, automovel.getPlaca());
            
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
    
    public ArrayList<Automovel> listar() {
        ArrayList listaAutomovel = new ArrayList<Automovel>();
        try {
            conexao = ConectaBanco.getConexao();
            PreparedStatement pstmt = conexao.prepareStatement(SELECT_ALL);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                //a cada loop cria um objeto cliente
                Automovel novoAutomovel = new Automovel();
                //seta os atributos do cliente com as informações do ResultSet
                novoAutomovel.setId(rs.getInt("id"));
                novoAutomovel.setFabricante(rs.getString("fabricante"));
                novoAutomovel.setModelo(rs.getString("modelo"));
                novoAutomovel.setAno(rs.getString("ano"));
                novoAutomovel.setCor(rs.getString("cor"));
                novoAutomovel.setStatus(rs.getString("status"));
                novoAutomovel.setPlaca(rs.getString("placa"));
                
                
                //add o cliente no lista
                listaAutomovel.add(novoAutomovel);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                conexao.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return listaAutomovel;

    }

    public Automovel localizarPorId(Automovel aut) {
        try {
            conexao = ConectaBanco.getConexao();
            PreparedStatement sql = conexao.prepareStatement(SELECT_BY_ID);
            sql.setInt(1, aut.getId());
            ResultSet resultado = sql.executeQuery();
            Automovel automovel = new Automovel();
            while (resultado.next()) {
                automovel.setId(resultado.getInt("id"));
                
                automovel.setFabricante(resultado.getString("fabricante"));
                automovel.setModelo(resultado.getString("modelo"));
                automovel.setAno(resultado.getString("ano"));
                automovel.setCor(resultado.getString("cor"));
                automovel.setCor(resultado.getString("cor"));
                automovel.setStatus(resultado.getString("status"));
                automovel.setPlaca(resultado.getString("placa"));
                

            }
            return automovel;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally{
             try {
                conexao.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
            

    }

    public void excluir(Automovel automovel) {
        try {
            conexao = ConectaBanco.getConexao();
            PreparedStatement pstmt = conexao.prepareStatement(DELETE);
            pstmt.setInt(1, automovel.getId());
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
