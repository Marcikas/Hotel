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
        <p>Logado como funcionario ${funcionarioLogado.nome} <a href="Controller?tarefa=Login&metodo=logout">(Clique aqui</a> para deslogar)</p>
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
        
        <h2>Fazer reserva</h2><br><br>
        <form action="Controller">
            Hospede cadastrado
            <select name="hospede">
                <c:forEach var="hospede" items="${hospede}">
                    <option value="${hospede.id}">${hospede.nome}</option>                    
                </c:forEach>
            </select>
            Vaga do estacionamento(opcional)
            <select name="estacionamento">
                <c:forEach var="est" items="${estacionamento}">
                        <option value="${est.idVaga}">${est.idVaga}</option>                    
                </c:forEach>
            </select>
            Apartamento
            <select name="apartamento">
                <c:forEach var="apt" items="${apartamento}">
                    <option value="${apt.idApartamento}">${apt.predio.nomePredio} ${apt.andarQuarto}°Andar quarto ${apt.numeroQuarto}</option>                    
                </c:forEach>
            </select>
            
            <span>Clique aqui para fazer o check in: </span>
            Data de Entrada: <input type="date" name="dataEntrada">
            Data de Saída: <input type="date" name="dataSaida">
            <input type="hidden" name="recepcionista" value="${funcionarioLogado.id}">
            <input type="hidden" name="tarefa" value="NovaReserva">
            <button type="submit">Enviar</button>
            
            <br><br><hr><br><br>
            
            <h3>Reservas</h3><br><br>
            
            <a href="Controller?tarefa=NovaReserva&metodo=getReservas">Consultar reservas</a>
        <br><hr><br>
    </body>
</html>
