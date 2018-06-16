<%-- 
    Document   : dashboard
    Created on : 16/06/2018, 00:46:34
    Author     : Marciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Estrada Feliz - Dashboard</title>
    </head>
    <body>
        <p>Logado como funcionario ${funcionarioLogado.nome} <a href="Controller?tarefa=Logout">(Clique aqui</a> para deslogar)</p>
        <br><br><hr><br><br>
        <h2>Cadastrar hospedes</h2><br><br>
        <form action="Controller">
            Nome: <input type="text" name="nome">
            cpf: <input type="text" name="cpf">
            endereço: <input type="text" name="endereco">
            Data de Nascimento: <input type="date" name="dataNascimento">
            observações: <input type="text" name="observacao">
            <input type="hidden" name="tipo" value="hospede">
            <input type="hidden" name="tarefa" value="NovaPessoa">
            <button type="submit">Enviar</button> 
        </form>
        
        <br><hr><br>
        
        <form action="Controller">
            <input type="hidden" name="tarefa" value="Lista">
            <button type="submit">Lista de pessoas</button>
        </form>
        
        <br><br><hr><br><br>
    </body>
</html>
