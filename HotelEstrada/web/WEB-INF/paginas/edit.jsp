<%-- 
    Document   : edit
    Created on : 14/06/2018, 04:02:22
    Author     : Marciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar informações</title>
        <link rel="styleSheet" type="text/css" href="css/style.css" media="screen" >
    </head>
    <body>
        <div class="navbar" ><img src="img/estrada.png"></div> 
        <br><br><br>
        <h1><center>Editar:</center></h1>
        <div class="editar">
        <form action="Controller">
            Nome: <input type="text" name="nome" value="${pessoa.nome}"><br/><br/>
            CPF: <input type="text" name="cpf" value="${pessoa.cpf}"><br/><br/>
            Endereço: <input type="text" name="endereco" value="${pessoa.endereco}"><br/><br/>
            <input type="hidden" name="id" value="${id}">
            <input type="hidden" name="tarefa" value="Editar">
            <button type="submit" class="botao">Enviar</button> 
        </form>
        </div>    
    </body>
</html>
