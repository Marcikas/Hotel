<%-- 
    Document   : reservas
    Created on : 19/06/2018, 03:27:03
    Author     : Marciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de reservas</title>
        <link rel="styleSheet" type="text/css" href="css/style.css" media="screen" >
    </head>
    <body>
        <div class="navbar" ><img src="img/estrada.png"></div>        
        <br><br><br>
        <h1><center>Reservas:</center></h1>
        <div class="container"><br>
            <div class="Lista">
            <table class="table">
                <thead class="thead-dark">
                    <tr>                        
                        <th scope="col" class="itemLista2">Apartamento</th>
                        <th scope="col" class="itemLista2">Hospede</th>  
                        <th scope="col" class="itemLista2">Vaga do estacionamento</th>
                        <th scope="col" class="itemLista2">Recepcionista responsavel</th> 
                        <th scope="col" class="itemLista2">Opções</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="reserva" items="${reservas}">
                        <tr>   
                        <form action="Controller">
                            <td class="itemLista2"> ${reserva.apartamento.predio.nomePredio} ${reserva.apartamento.andarQuarto} ${reserva.apartamento.numeroQuarto}</td>
                            <td class="itemLista2"> ${reserva.hospede.nome}</td>
                            <td class="itemLista2"> ${reserva.estacionamento.idVaga}</td>
                            <td class="itemLista2"> ${reserva.recepcionista.nome}</td>
                            <td class="itemLista2">
                                <a href="Controller?tarefa=NovaHospedagem&id=<c:out value="${reserva.idReserva}"/>">Check-in</a>
                                <a href="Controller?tarefa=Checkout&id=<c:out value="${reserva.idReserva}"/>">Checkout</a>
                                <a href="Controller?tarefa=NovaReserva&metodo=removerReserva&id=<c:out value="${reserva.idReserva}"/>">Cancelar</a>
                            </td>               
                               
                        </form>
                        </tr>
                    </c:forEach>
                </tbody>
            </table><br><br>    
            <br/><br/>
               <center><button type="submit" class="botao" onclick="history.back()">Voltar</button></center>
               <br/><br/>
               
               </div>
        </div>
    </body>
</html>