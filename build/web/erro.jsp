<%-- 
    Document   : erro
    Created on : 07/09/2011, 12:29:07
    Author     : Natanael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>locadora de Automóveis-Erro</title>
    </head>
    <body>
        <strong><font color="red"><%=request.getAttribute("msgerro") %><br />
                Contate o administrador ou desenvolvedor do sistema de locação de automóveis e informe a seguinte mensagem de erro:<br />
                <%= ((Exception)request.getAttribute("erro")).getMessage() %></font></strong>
    </body>
</html>