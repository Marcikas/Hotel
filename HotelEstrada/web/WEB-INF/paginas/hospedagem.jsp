<%-- 
    Document   : hospedagem
    Created on : Jun 30, 2018, 1:29:22 PM
    Author     : carlysson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospedagem</title>
        <link href="../../style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1> Validação de Hospedagem</h1>

        <form action="Controller">
            <span>Clique aqui para fazer o check in: </span>
            Data de Entrada <input type="date" name="dataEntrada">

            <span>Clique aqui para fazer o check out: </span>
            Data de Saída: <input type="date" name="dataSaida">

            <span>Digite aqui o valor da diária: </span>
            <input type="number" name="diaria">
            <input type="hidden" value="NovaHospedagem" name="tarefa">
            <input type="hidden" value="validarHospedagem" name="metodo">
            <input type="hidden"  value="${reserva.idReserva}" name="id">
            <input type="submit" value="enviar">
        </form>
    </body>
</html>
