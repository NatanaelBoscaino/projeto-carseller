<%-- 
    Document   : sucesso_Automovel
    Created on : 07/09/2011, 12:29:50
    Author     : Natanael & David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CarSeller - Sucesso Automóvel</title>
	<link href="css/reset.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/typography.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/main.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
	<div id="mainwrap">
        <div id="pagetop"><div id="pagetop-inner">
    	<div id="header" class="clearfix">
            <h1 id="logo"><a href="?">Locadora de automoveis</a></h1>
            <a href="index.jsp" id="but-green"><span>log out</span></a>
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
            <br/>
            <h3>Cadastro Realizado com sucesso!</h3>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <div class="clearfix">
		<a href="ManterAutomoveis.jsp" class="but-grey"><span>NOVO CADASTRO</span></a>
                <a href="ControleAutomovel?acao=Listar&id=<.getId()%>" class="but-grey"><span>LISTAR</span></a>
            </div>
        </div>
    </div></div>
    <div id="footer">
    	&copy; Copyright 2016 - 4º Semestre Análise e Desenvolvimento de Sistemas - Natanael G. da Silva e David L. de Souza
    </div>
    </body> 
</html>