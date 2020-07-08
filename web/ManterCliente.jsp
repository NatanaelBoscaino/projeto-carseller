<%-- 
    Document   : ManterCliente
    Created on : 07/09/2011, 12:28:38
    Author     : Natanael & David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/reset.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/typography.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/main.css" rel="stylesheet" type="text/css" />
	<title>CarSeller - Cadastro de Clientes</title>
        <script type="text/javascript">
            function mascara(o,f){
                v_obj=o;
                v_fun=f;
                setTimeout("execmascara()",1);
            }
            function execmascara(){
               v_obj.value=v_fun(v_obj.value);
            }
            function mcpf(v){
                v=v.replace(/\D/g,"");                    //Remove tudo o que não é dígito
                v=v.replace(/(\d{3})(\d)/,"$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
                v=v.replace(/(\d{3})(\d)/,"$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
                                                         //de novo (para o segundo bloco de números)
                v=v.replace(/(\d{3})(\d{1,2})$/,"$1-$2"); //Coloca um hífen entre o terceiro e o quarto dígitos
                return v;
            }
            function mtel(v){
                v=v.replace(/\D/g,"");                 //Remove tudo o que não é dígito
                v=v.replace(/^(\d\d)(\d)/g,"($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
                v=v.replace(/(\d{4})(\d)/,"$1-$2");    //Coloca hífen entre o quarto e o quinto dígitos
                return v;
            }
            function soNumeros(v){
                return v.replace(/\D/g,"");
            }
        </script>
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
        <br/><br/>
        <form action="ControleCliente" method="post">
            <label>Nome: </label><br/><input type="text" name="txtNome" size="27" maxlength="30" class="cad"><br/>
            <label>CPF: </label><br/><input type="text" name="txtCpf" size="28" maxlength="14" class="cad" onkeypress="mascara(this, mcpf)"><br/>
            <label>Telefone: </label><br/><input type="text" name="txtTelefone" size="25" maxlength="14" class="cad" onkeypress="mascara(this, mtel)"><br/>
            <label>Endereço: </label><br/><input type="text" name="txtEndereco" size="24" maxlength="30" class="cad"><br/>
            <input type="submit" name="acao" value="Cadastrar" class="but-form"/>
        </form>
        <br/>
	<div class="clearfix">             
            <a href="ControleCliente?acao=Listar&id=<.getId()%>" class="but-grey"><span>LISTAR</span></a>
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