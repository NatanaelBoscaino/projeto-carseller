<%-- 
    Document   : listaCliente
    Created on : 07/09/2011, 12:30:05
    Author     : Natanael
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="Modelo.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.ClienteDAO"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CarSeller - Lista de Clientes</title>
	<link href="css/reset.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/typography.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/main.css" rel="stylesheet" type="text/css" />
    </head>
<body>
	<div id="mainwrap">																																																																																																																																																																																																																																																																																																																				
	<div id="pagetop"><div id="pagetop-inner">
    	<div id="header" class="clearfix">
            <h1 id="logo"><a href="?">Locadora de automoveis</a></h1>
            <a href="index.jsp" id="but-green"><span>Sair / Logout</span></a>
        </div>
        <div id="mainnav" class="vernav clearfix">
        	<ul class="clearfix">
            	<li><a href="indexNata.jsp"><span>Inicio</span></a></li>
                <li><a href="?"><span>Serviços</span></a></li>
                <li><a href="?"><span>Soluções</span></a></li>
                <li><a href="?"><span>Portfolio</span></a></li>
                <li><a href="?"><span>Contato / Ajuda</span></a></li>
            </ul>
        <br/>
        <h2>Clientes cadastrados</h2>
        <br/>
        <table border="3" width="60%" cellpadding="20" class="d-cli">
            <tr align="center">
                    <td>CPF</td>
                    <td>Nome</td>
                    <td>Telefone</td>  
                    <td>Endereco</td>
                    <td>Atualizar</td>
                    <td>Excluir</td>
                </tr>
                <% //recupera a lista do request
                ArrayList<Cliente> listaCliente = (ArrayList<Cliente>)request.getAttribute("lista");
                for(Cliente cliente: listaCliente){  %>  
                <tr align="center">
                    <td><%=cliente.getCpf() %></td>
                    <td><%=cliente.getNome()%></td>
                    <td><%=cliente.getTelefone()%></td>
                    <td><%=cliente.getEndereco()%></td>
                    <td><a href="ControleCliente?acao=localizarPorId&id=<%=cliente.getId()%>">Atualizar</a> 
                    <td><a href="ControleCliente?acao=Excluir&id=<%=cliente.getId()%>">Excluir</a></td>
                </tr>
                <%}%>
           </table>
           <br/>
            <div class="clearfix">
                <a href="ManterCliente.jsp" class="but-grey"><span>NOVO CADASTRO</span></a>
                <a href="indexNata.jsp" class="but-grey"><span>VOLTAR AO MENU PRINCIPAL</span></a>
                <a href="?" class="but-grey"><span>IMPRIMIR</span></a>
            </div>
        </div>
    </div></div>
    <div id="footer">
    	&copy; Copyright 2016 - 4º Semestre Análise e Desenvolvimento de Sistemas - Natanael G. da Silva e David L. de Souza
    </div>
    </body>
</html>

