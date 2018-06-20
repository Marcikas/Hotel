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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar</h1>
        
        <form action="Controller">
            Nome: <input type="text" name="nome" value="${pessoa.nome}">
            cpf: <input type="text" name="cpf" value="${pessoa.cpf}">
            Endereço: <input type="text" name="endereco" value="${pessoa.endereco}">
            <input type="hidden" name="id" value="${id}">
            <input type="hidden" name="tarefa" value="Editar">
            <button type="submit">Enviar</button> 
        </form>
    </body>
</html>
