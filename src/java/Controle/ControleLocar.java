/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controle;

import Modelo.Locar;
import Dao.LocarDAO;
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
@WebServlet(name = "ControleLocar", urlPatterns = "/ControleLocar")
public class ControleLocar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recupera a ação o usuário7
        String acao = request.getParameter("acao");
        try {

            if (acao.equals("Cadastrar")) {
                // Recupera os dados do formulário.
                
                String fabricante = request.getParameter("txtFabricante");
                String modelo = request.getParameter("txtModelo");
                String ano = request.getParameter("txtAno");
                String cor = request.getParameter("txtCor");
                String placa = request.getParameter("txtPlaca");
                String cpf = request.getParameter("txtCpf");
                String nome = request.getParameter("txtNome");
                String telefone = request.getParameter("txtTelefone");
                String endereco = request.getParameter("txtEndereco");
                String dataderetirada = request.getParameter("txtDataderetirada");
                String dataprevistadevolucao = request.getParameter("txtDataprevistadevolucao");
                String datadevolucao = request.getParameter("txtDatadevolucao");
                
                
                

                // Cadastra os dados no banco de dados "bdcliente", tabela "locacao".
                Locar locar = new Locar();
                
                locar.setFabricante(fabricante);
                locar.setModelo(modelo);
                locar.setAno(ano);
                locar.setCor(cor);
                locar.setStatus("Disponivel");
                locar.setPlaca(placa);
                locar.setCpf(cpf);
                locar.setNome(nome);
                locar.setTelefone(telefone);
                locar.setEndereco(endereco);
                

                //cria DAO
                LocarDAO dao = new LocarDAO();
                dao.cadastrar(locar);

                //add no request uma String com a mensagem
                request.setAttribute("objAutomovel", locar);
                request.setAttribute("msgerro", "Erro no cadastro da locação... ");
                //envia o request para sucesso.jsp
                RequestDispatcher rd = request.getRequestDispatcher("/sucesso_Automovel.jsp");
                rd.forward(request, response);
            }//fim do if cadastrar
            else {
                if (acao.equals("Listar")) {
                    AutomovelDAO autDAO = new AutomovelDAO();
                    ArrayList<Automovel> listaAutomovel = autDAO.listar();

                    //add a lista de clientes o objeto request
                    request.setAttribute("lista_Automovel", listaAutomovel);
                    request.setAttribute("msgerro", "Erro no listar do automóvel... ");
                    //envia o request para o jsp
                    RequestDispatcher rd = request.getRequestDispatcher("/listaAutomovel.jsp");
                    rd.forward(request, response);

                }//fim do if listar
                else if (acao.equals("localizarPorId")) {
                    //recuperar o id selecionado
                    int id = Integer.parseInt(request.getParameter("id"));
                    Automovel a = new Automovel();
                    a.setId(id);

                    AutomovelDAO autDAO = new AutomovelDAO();
                    Automovel automovel = autDAO.localizarPorId(a);
                    //add o cliente no request
                    request.setAttribute("automovel", automovel);
                    RequestDispatcher rd = request.getRequestDispatcher("/atualizar_Automovel.jsp");
                    rd.forward(request, response);
                } //fim do if localizar
                else if (acao.equals("Atualizar")) {

                    String fabricante = request.getParameter("txtFabricante");
                    String modelo = request.getParameter("txtModelo");
                    String ano = request.getParameter("txtAno");
                    String cor = request.getParameter("txtCor");
                    String placa = request.getParameter("txtPlaca");

                    // Cadastra os dados no banco de dados "bdcliente", tabela "cliente".
                    Automovel automovel = new Automovel();

                    automovel.setFabricante(fabricante);
                    automovel.setModelo(modelo);
                    automovel.setAno(ano);
                    automovel.setCor(cor);
                    automovel.setStatus("Disponivel");
                    automovel.setPlaca(placa);

                    //cria DAO
                    AutomovelDAO dao = new AutomovelDAO();
                    dao.atualizar(automovel);

                    //add no request uma String com a mensagem
                    request.setAttribute("objAutomovel", automovel);
                    request.setAttribute("msgerro", "Erro no cadastro do automóvel... ");
                    //envia o request para sucesso.jsp
                    RequestDispatcher rd = request.getRequestDispatcher("/sucesso_Automovel.jsp");
                    rd.forward(request, response);
                }//fim do if atualizar
                else if (acao.equals("Excluir")) {

                    /*
                ESCREVA O A AÇÃO PARA EXCLUSAO
                     */
                    // Recupera os dados do formulário.
                    int id = Integer.parseInt(request.getParameter("id"));
                    //cria DAO
                    AutomovelDAO dao = new AutomovelDAO();
                    Automovel automovel = new Automovel();
                    automovel.setId(id);
                    dao.excluir(automovel);

                    //add no request uma String com a mensagem
                    request.setAttribute("objAutomovel", automovel);
                    //envia o request para sucesso.jsp
                    RequestDispatcher rd = request.getRequestDispatcher("ControleAutomovel?acao=Listar&id=<.getId()%>");
                    rd.forward(request, response);

                }//fim do if excluir
            }
        } catch (Exception erro) {
            // Exibe uma mensagem de erro para o usuário.
            request.setAttribute("erro", erro);

            RequestDispatcher rd = request.getRequestDispatcher("//erro.jsp");
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
