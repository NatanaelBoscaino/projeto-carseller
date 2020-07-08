<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="Modelo.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.ClienteDAO"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CarSeller - Locar Automóvel</title>
<meta charset="utf-8"/>
<link href="css/reset.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/typography.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="mainwrap">																																																																																																																																																																																																																																																																																																																				
	<div id="pagetop"><div id="pagetop-inner-list">
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
        </div>
        <div id="content">
            <h2 id="label3"></h2>
            <h4>DADOS DO AUTOMOVEL</h4>
                <input type="text" name="placa_vei" size="6" maxlength="10" class="cad" placeholder="Digite a Placa do Veículo"/><br/>
                <input type="submit" name="acao" value="Buscar" class="but-form" ><br/>
                <table border="3" width="55%" cellpadding="20" class="d-vei">
                    <tr align="center">
                        <td>Fabricante</td>
                        <td>Modelo</td>  
                        <td>Ano</td>
                        <td>Cor</td>
                        <td>Placa</td>
                    </tr>
                    
                    
                    
                    
                    
                    
                    
                </table>
            <br/>
            <h4>DADOS DO CLIENTE</h4>    
                <form action="ControleLocar" method="post">
                <input type="text" name="cpf_cli" size="6" maxlength="10" class="cad" placeholder="Digite o CPF do Cliente"/><br/>
                <input type="submit" name="acao" value="BuscarCPF" class="but-form"><br/>
                <table border="3" width="55%" cellpadding="20" class="d-cli">
                    <tr align="center">
                        <td>CPF</td>
                        <td>Nome</td>
                        <td>Telefone</td>  
                        <td>Endereço</td>
                    </tr>
                    
                    
                    
                </table>
                </form>
            <br/>
            <h4>DADOS DA LOCAÇÃO</h4>    
                <label>DATA DE RETIRADA </label><br/><input type="text" name="txtnome"size="6"maxlength="10" class="cad"/><br/>
                <label>DATA PREVISTA DEVOLUÇÃO</label><br/><input type="text" name="txtnome"size="6"maxlength="10" class="cad"/><br/>
                <label>DATA DEVOLUÇÃO</label><br/><input type="text" name="txtnome"size="6"maxlength="10" class="cad"/><br/>             
                <label>VALOR</label><br/><input type="text" name="txtnome"size="6"maxlength="7" class="cad"/><br/>
                <label>VALOR TAXA DE ATRASO</label><br/><input type="text" name="txtnome"size="6"maxlength="7" class="cad"/><br/>
                <label>VALOR TOTAL</label><br/><input type="text" name="txtnome"size="6"maxlength="7" class="cad"/><br/>
                
        	<div class="clearfix">
                <a href="?" class="but-grey"><span>Alugar </span></a>
                <a href="?" class="but-grey"><span>Devolver</span></a>
                <a href="indexNata.jsp" class="but-grey"><span>Voltar ao menu principal</span></a>                                
        	</div>
        </div>
        </div>
    </div>
    <div id="pagebot" class="clearfix">
    	<h2>Vestibulum <img src="images/bullet1.gif" alt="" style="margin-bottom: -1px" /></h2>
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
