<%--
    Document   : atualizar
    Created on : 07/09/2011, 21:26:54
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
        <title>CarSeller - Atualizar Cliente</title>
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
        <%
        Cliente cliente = (Cliente) request.getAttribute("cliente");
        %>
        <h2>Atualizar Clientes</h2>
        <br/>
        <form action="ControleCliente" method="post">
            <input type="hidden" name="hdId" class="cad" value="<%=cliente.getId()%>">
            <label>Nome: </label><br/><input type="text" name="txtNome" class="cad" value="<%=cliente.getNome()%>"><br/>
            <label>CPF: </label><br/><input type="text" name="txtCpf" class="cad" value="<%=cliente.getCpf()%>"><br/>
            <label>Telefone: </label><br/><input type="text" name="txtTelefone" class="cad" value="<%=cliente.getTelefone()%>"><br/>
            <label>Endereço: </label><br/><input type="text" name="txtEndereco" class="cad" value="<%=cliente.getEndereco()%>"><br/>
            <br/>
            <input type="submit" name="acao" value="Atualizar" class="but-form"><br/>
        </form>
        <br/>
            <div class="clearfix">
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
