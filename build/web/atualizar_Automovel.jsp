<%--
    Document   : atualizar
    Created on : 07/09/2011, 21:26:54
    Author     : Natanael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="Modelo.Automovel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.ClienteDAO"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CarSeller - Atualizar Automóvel</title>
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
        Automovel automovel = (Automovel) request.getAttribute("automovel");
        %>
        <h2>Atualizar Automoveis</h2>
        <br/>
        <form action="ControleAutomovel" method="post">
            <input type="hidden" name="hdId" value="<%=automovel.getId()%>">
            <!--<label>NUMERO: </label><br/><input type="text" name="txtNumero" class="cad" value="<%=automovel.getNumero()%>"><br/>-->
            <label>FABRICANTE: </label><br/><input type="text" name="txtFabricante" class="cad" value="<%=automovel.getFabricante()%>"><br/>
            <label>MODELO: </label><br/><input type="text" name="txtModelo" class="cad" value="<%=automovel.getModelo()%>"><br/>
            <label>ANO: </label><br/><input type="text" name="txtAno" class="cad" value="<%=automovel.getAno()%>"><br/>
            <label>COR: </label><br/><input type="text" name="txtCor" class="cad" value="<%=automovel.getCor()%>"><br/>
            <label>PLACA: </label><br/><input type="text" name="txtPlaca" class="cad" value="<%=automovel.getPlaca()%>"><br/>
            <br/>
            <input type="submit" name="acao" value="Atualizar" class="but-form"><br>

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