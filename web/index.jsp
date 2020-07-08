<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CarSeller - Locadora de Automóveis</title>
<meta charset="utf-8">
<link href="css/reset.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/typography.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.slidepanel.setup.js"></script>
</head>
<body>
<div id="mainwrap">																																																																																																																																																																																																																																																																																										
    <div class="wrapper col0">
        <div id="topbar">
            <div id="slidepanel">
                <div class="topbox">
                    <h2>Cadastre-se</h2>
                    <form metod="get" action="SCadastro">
                    <label for="usuario">Nome: <input type="text" name="email"/></label>
                    <label for="email">E-mail: <input type="text" name="email"/></label>
                    <label for="cidade">Cidade: <input type="text" name="cidade"/></label>
                    <label for="login">Login: <input type="text" name="login"/></label>
                    <label for="senha">Senha: <input type="password" name="email"/></label>
                    <input class="button" type="submit" name="Submit" value="cadastro"/>
                    </form>
                </div>
            <div class="topbox">
                
            </div>
            <div class="topbox last">
                <h2>Login</h2>
                <form action="Login" method="post">
                    <fieldset>
                        <legend>Login</legend>
                        <label for="usuario">Usuário:<input type="text" name="id_usuario" id="id_usuario"/></label>
                        <label for="senha">Senha:<input type="password" name="senha_usuario" id="senha_usuario"/></label>
                        <p>
                        <input type="submit" name="btn_usuario" id="btn_usuario" value="Login" />
                        &nbsp;
                        <input type="reset" name="reset" id="reset" value="Limpar" />
                        </p>
                    </fieldset>
                </form>
            </div>
            <br class="clear" />
            </div>
            <div id="loginpanel">
                <ul class="login_ul">
                    <li class="left">Painel Login &raquo;</li>
                    <li class="right" id="toggle"><a id="slideit" href="#slidepanel">Abrir Painel</a><a id="closeit" style="display: none;" href="#slidepanel">Fechar Painel</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
	<div id="pagetop"><div id="pagetop-inner">
    	<div id="header" class="clearfix">
        	<h1 id="logo"><a href="?">Locadora de automoveis</a></h1>
        </div>
        <div id="mainnav" class="vernav clearfix">
            <ul class="clearfix">
            	<li><a href="?"><span>Inicio</span></a></li>
                <li><a href="?"><span>Serviços</span></a></li>
                <li><a href="?"><span>Soluções</span></a></li>
                <li><a href="?"><span>Portfolio</span></a></li>
                <li><a href="?"><span>Contato / Ajuda</span></a></li>
            </ul>
        </div>
        <div id="content">
        	<div id="content-inner">
                <h2 id="label">Seja bem-vindo a locadora de automoveis CarSeller</h2>
                <p style="margin-bottom: 15px;"><strong>Seja bem-vindo a locadora de automoveis "CarSeller".
                    Onde você encontra os melhores veiculos para realizar um passeio com qualidade e conforto.</strong></p>
                <p>Realize locações dos melhores automóveis da região,
                    seja para seu trabalho, passeio com a familha, diversão com amigos, desfiles, 
                    apresentações e automoveis para corridas .</p>
                </div>
        	<div class="clearfix">
                <a href="?" class="but-grey"><span>Automóveis para passeios </span></a>
                <a href="?" class="but-grey"><span>Automóveis para desfiles</span></a>
                <a href="?" class="but-grey"><span>Automóveis para apresentações</span></a>                                
        	</div>
        </div>
    </div></div>
    <div id="pagebot" class="clearfix">
    	<h2>Noticias <img src="images/bullet1.gif" alt="" style="margin-bottom: -1px" /></h2>
        <div id="box-wrap" class="clearfix">
        	<div class="box">
            	<span class="date">04.01.09</span>
                <p><a href="?" class="title">Curabitur pharetra dui ac dui. Etiam porta dictum felis. In a nisl in neque mattis</a></p>
                <img src="images/car1-xhdzy.jpg" class="img" alt="xhdzy" />
                <p>Proin mattis nunc sit amet mauris. Morbi turpis. Donec nonummy, magna nec vestibulum pretium. Vivamus auctor condimentum turpis. Sed a urna. Praesent arcu quam rhoncus vestibulum nunc.</p>
            </div>
            <div class="box">
            	<span class="date">04.01.09</span>
                <p><a href="?" class="title">Curabitur pharetra dui ac dui. Etiam porta dictum felis. In a nisl in neque mattis</a></p>
                <img src="images/car2.jpg" class="img" alt="" />
                <p>Proin mattis nunc sit amet mauris. Morbi turpis. Donec nonummy, magna nec vestibulum pretium. Vivamus auctor condimentum turpis. Sed a urna. Praesent arcu quam rhoncus vestibulum nunc.</p>
            </div>
            <div class="box box-last">
            	<span class="date">04.01.09</span>
                <p><a href="?" class="title">Curabitur pharetra dui ac dui. Etiam porta dictum felis. In a nisl in neque mattis</a></p>
                <img src="images/car3.jpg" class="img" alt="" />
                <p>Proin mattis nunc sit amet mauris. Morbi turpis. Donec nonummy, magna nec vestibulum pretium. Vivamus auctor condimentum turpis. Sed a urna. Praesent arcu quam rhoncus vestibulum nunc.</p>
            </div>
        </div>
    </div>
    <div id="footer">
    	&copy; Copyright 2016 - 4º Semestre Análise e Desenvolvimento de Sistemas - Natanael G. da Silva e David L. de Souza
    </div>
</div>
</body>
</html>
