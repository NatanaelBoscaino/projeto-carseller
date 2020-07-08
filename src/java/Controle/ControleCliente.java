/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Controle;


import Modelo.Cliente;
import Dao.ClienteDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Natanael
 */
@WebServlet(name = "ControleCliente", urlPatterns = "/ControleCliente")
public class ControleCliente extends HttpServlet {
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
          //recupera a ação o usuário7
        String acao = request.getParameter("acao");
          try {
              
              if(acao.equals("Cadastrar")){
            // Recupera os dados do formulário.
            String cpf = request.getParameter("txtCpf");
            String nome = request.getParameter("txtNome");
            String telefone = request.getParameter("txtTelefone");
            String endereco = request.getParameter("txtEndereco");
            
                      
            // Cadastra os dados no banco de dados "bdcliente", tabela "cliente".
            Cliente cliente = new Cliente();
            cliente.setCpf(cpf);
            cliente.setNome(nome);
            cliente.setTelefone(telefone);
            cliente.setEndereco(endereco);
            //cria DAO
            ClienteDAO dao = new ClienteDAO();
            dao.cadastrar(cliente);

            //add no request uma String com a mensagem
              request.setAttribute("objCliente", cliente);
              //envia o request para sucesso.jsp
              RequestDispatcher rd= request.getRequestDispatcher("/sucesso_Cliente.jsp");
              rd.forward(request, response);
              }//fim do if cadastrar
            else 
                  if(acao.equals("Listar")){
                ClienteDAO cliDAO = new ClienteDAO();
                ArrayList<Cliente> listaCliente = cliDAO.listar();
                
                //add a lista de clientes o objeto request
                request.setAttribute("lista", listaCliente);
                //envia o request para o jsp
                 RequestDispatcher rd= request.getRequestDispatcher("/listaCliente.jsp");
                 rd.forward(request, response);
             
            }//fim do if listar
            else if(acao.equals("localizarPorId")){
            //recuperar o id selecionado
                int id = Integer.parseInt(request.getParameter("id"));
                Cliente c = new Cliente();
                c.setId(id);

                ClienteDAO cliDAO = new ClienteDAO();
                Cliente cliente = cliDAO.localizarPorId(c);
                //add o cliente no request
                request.setAttribute("cliente", cliente);
                RequestDispatcher rd= request.getRequestDispatcher("/atualizar_Cliente.jsp");
                 rd.forward(request, response);
          } //fim do if localizar
           else  if(acao.equals("Atualizar")){
                String cpf = request.getParameter("txtCpf");
                String nome = request.getParameter("txtNome");
                String telefone = request.getParameter("txtTelefone");
                String endereco = request.getParameter("txtEndereco");


                // Cadastra os dados no banco de dados "bdcliente", tabela "cliente".
                Cliente cliente = new Cliente();
                cliente.setCpf(cpf);
                cliente.setNome(nome);
                cliente.setTelefone(telefone);
                cliente.setEndereco(endereco);
                //cria DAO
                ClienteDAO dao = new ClienteDAO();
                dao.atualizar(cliente);

                //add no request uma String com a mensagem
                request.setAttribute("objCliente", cliente);
                //envia o request para sucesso.jsp
                RequestDispatcher rd= request.getRequestDispatcher("/sucesso_Cliente.jsp");
                rd.forward(request, response);
          }//fim do if atualizar
         else if(acao.equals("Excluir")){
       
                    /*
                ESCREVA O A AÇÃO PARA EXCLUSAO
                     */
                    // Recupera os dados do formulário.
                    int id = Integer.parseInt(request.getParameter("id"));
                    //cria DAO
                    ClienteDAO clidao = new ClienteDAO();
                    Cliente cliente = new Cliente();
                    cliente.setId(id);
                    clidao.excluir(cliente);

                    //add no request uma String com a mensagem
                    request.setAttribute("objAutomovel", cliente);
                    //envia o request para sucesso.jsp
                    RequestDispatcher rd = request.getRequestDispatcher("ControleCliente?acao=Listar&id=<.getId()%>");
                    rd.forward(request, response);
            
            
         }//fim do if excluir
           } catch (Exception erro) {
            // Exibe uma mensagem de erro para o usuário.
            request.setAttribute("erro", erro);
             RequestDispatcher rd= request.getRequestDispatcher("//erro.jsp");
                 rd.forward(request, response);
          
        }//fim do catch



  

     }

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //encaminha a requisição
         processRequest(request, response);
    
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //encaminha a requisição
         processRequest(request, response);
    }

}