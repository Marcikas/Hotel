<%-- 
    Document   : hospedagem
    Created on : Jun 30, 2018, 1:29:22 PM
    Author     : carlysson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospedagem</title>
        <link rel="styleSheet" type="text/css" href="css/style.css" media="screen" >
    </head>
    <body>
        
        <div class="navbar" ><img src="img/estrada.png"></div>     
        <br/><br/>
        <center><h1> Validação de Hospedagem</h1></center><br/><br/>
        <div class="Lista"> 
        
        
<br/><br/>
        <form action="Controller">
            <span><b>Clique aqui para fazer o check in: </b></span>
            <br/><br/>
            <label for="input1" class="hora2">Data de Entrada</label> <input name="input1" type="date" name="dataEntrada">
            <br/><br/>
            <span><b>Clique aqui para fazer o check out:</b> </span>
            <br/><br/>
            <label for="input2" class="hora2">Data de Saída: </label><input name="input2" type="date" name="dataSaida">
            <br/><br/>
            <label for="input3" class="hora2"><span>Digite aqui o valor da diária:</label> </span>
            <input type="number" name="diaria" name="input3">
            <input type="hidden" value="NovaHospedagem" name="tarefa">
            <input type="hidden" value="validarHospedagem" name="metodo">
            <input type="hidden"  value="${reserva.idReserva}" name="id"><br/><br/><br/>
            <input type="submit" value="Enviar" class="botao"><br/><br/>
            
            
        </form>
            <center><button type="submit" class="botao3" onclick="history.back()">Voltar</button></center>
            <br/><br/>
            </div>
    </body>
</html>
