<%-- 
    Document   : Checkout
    Created on : Jul 1, 2018, 1:38:36 PM
    Author     : carlysson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="styleSheet" type="text/css" href="css/style.css" media="screen" >
        <title>Checkout</title>
    </head>
    <body>

        <div class="navbar" ><img src="img/estrada.png"></div>      

        <div class="Lista">
            <table class="table">
                <h3>Checkout</h3>
                <thead class="thead-dark">
                <th scope="col" class="itemLista3">Nome</th>
                <th scope="col" class="itemLista3">Data Entrada </th>
                <th scope="col" class="itemLista3">Data Saída </th> 
                <th scope="col" class="itemLista3">Valor total ser Pago </th> 
                </thead>
                <tr>   
                <form action="Controller">
                    <td class="itemLista3"> ${hosp.reserva.hospede.nome}</td>
                    <td class="itemLista3"> ${hosp.dataEntrada}</td>
                    <td class="itemLista3"> ${hosp.dataSaida}</td>
                    <td class="itemLista3"> ${hosp.valorTotal}</td>
                    <td class="itemLista3">              
                </form>
                </tr>
            </table>
            <center><button type="submit" class="botao" onclick="history.back()">Voltar</button></center>
            <br/><br/>
        </div>
        <h1></h1>
    </body>
</html>
