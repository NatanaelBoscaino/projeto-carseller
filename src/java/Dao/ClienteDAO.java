/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.Cliente;
import Modelo.ConectaBanco;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClienteDAO {
    private Connection conexao;
    private static final String INSERT = "INSERT INTO CLIENTE(cpf,nome,telefone,endereco) VALUES (?,?,?,?)";
    private static final String UPDATE = "UPDATE CLIENTE set cpf=?,nome=?,telefone=?,endereco=? WHERE cpf=?";
    private static final String SELECT_ALL = "SELECT * FROM cliente ORDER BY id";
    private static final String SELECT_BY_ID = "SELECT * FROM cliente WHERE id=?";
    private static final String DELETE = "DELETE  FROM cliente WHERE ID=?";
    
    
    public void cadastrar(Cliente cliente) {
        try {
            conexao = ConectaBanco.getConexao();

            PreparedStatement pstmt = conexao.prepareStatement(INSERT);
            pstmt.setString(1, cliente.getCpf());
            pstmt.setString(2, cliente.getNome());
            pstmt.setString(3, cliente.getTelefone());
            pstmt.setString(4, cliente.getEndereco());
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
    
    public void atualizar(Cliente cliente) {
        try {
            conexao = ConectaBanco.getConexao();

            PreparedStatement pstmt = conexao.prepareStatement(UPDATE);
            pstmt.setString(1, cliente.getCpf());
            pstmt.setString(2, cliente.getNome());
            pstmt.setString(3, cliente.getTelefone());
            pstmt.setString(4, cliente.getEndereco());
            pstmt.setString(5, cliente.getCpf());
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

    public ArrayList<Cliente> listar() {
        ArrayList listaCliente = new ArrayList<Cliente>();
        try {
            conexao = ConectaBanco.getConexao();
            PreparedStatement pstmt = conexao.prepareStatement(SELECT_ALL);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                //a cada loop cria um objeto cliente
                Cliente novoCliente = new Cliente();
                //seta os atributos do cliente com as informações do ResultSet
                novoCliente.setId(rs.getInt("id"));
                novoCliente.setNome(rs.getString("nome"));
                novoCliente.setCpf(rs.getString("cpf"));
                novoCliente.setTelefone(rs.getString("telefone"));
                novoCliente.setEndereco(rs.getString("endereco"));
                //add o cliente no lista
                listaCliente.add(novoCliente);
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
        return listaCliente;

    }

    public Cliente localizarPorId(Cliente cli) {
        try {
            conexao = ConectaBanco.getConexao();
            PreparedStatement sql = conexao.prepareStatement(SELECT_BY_ID);
            sql.setInt(1, cli.getId());
            ResultSet resultado = sql.executeQuery();
            Cliente cliente = new Cliente();
            while (resultado.next()) {
                cliente.setId(resultado.getInt("id"));
                cliente.setNome(resultado.getString("nome"));
                cliente.setCpf(resultado.getString("cpf"));
                cliente.setTelefone(resultado.getString("telefone"));
                cliente.setEndereco(resultado.getString("endereco"));

            }
            return cliente;
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

    public void excluir(Cliente cliente) {
        try {
            conexao = ConectaBanco.getConexao();
            PreparedStatement pstmt = conexao.prepareStatement(DELETE);
            pstmt.setInt(1, cliente.getId());
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
