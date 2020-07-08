<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>CarSeller - Cadastro de Veículos</title>
    <meta charset="utf-8">
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
            <form action="ControleAutomovel" method="post">
                <label>FABRICANTE: </label><br/><input type="text" name="txtFabricante"size="30"maxlength="50" class="cad"/><br/>
                <label>MODELO: </label><br/><input type="text" name="txtModelo"size="34"maxlength="50" class="cad"/><br/>
                <label>ANO: </label><br/><input type="text" name="txtAno"size="38"maxlength="50" class="cad"/><br/>
                <label>COR: </label><br/><input type="text" name="txtCor"size="38"maxlength="50" class="cad"/><br/>
                <label>PLACA: </label><br/><input type="text" name="txtPlaca"size="36"maxlength="50" class="cad"/><br/>
                <label>CATEGORIA :</label><br/>
                    <select>
                        <option>-- Escolha a Categoria --</option>
                        <option>Automóvel Passeio</option>
			<option>Automóvel Desfile</option>
			<option>Automóvel Apresentação</option>
                    </select>
                <br/>
                <input type="submit" name="acao" value="Cadastrar" class="but-form"/>
            </form>
            <br/>
            <div class="clearfix">
                <a href="ControleAutomovel?acao=Listar&id=<.getId()%>" class="but-grey"><span>LISTAR</span></a>
                <a href="indexNata.jsp" class="but-grey"><span>VOLTAR AO MENU PRINCIPAL</span></a>                                
            </div>
        </div>
    </div></div>
    <div id="footer">
    	&copy; Copyright 2016 - 4º Semestre Análise e Desenvolvimento de Sistemas - Natanael G. da Silva e David L. de Souza
    </div>
</div>
</body>
</html>
