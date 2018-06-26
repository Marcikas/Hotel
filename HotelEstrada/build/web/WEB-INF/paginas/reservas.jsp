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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container"><br>
            <h3>Reservas: </h3><br><br>
            <table class="table">
                <thead class="thead-dark">
                    <tr>                        
                        <th scope="col">Apartamento</th>
                        <th scope="col">Hospede</th>  
                        <th scope="col">Vaga do estacionamento</th>
                        <th scope="col">Recepcionista responsavel</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="reserva" items="${reservas}">
                        <tr>   
                        <form action="Controller">
                            <td> ${reserva.apartamento.predio.nomePredio} ${reserva.apartamento.andarQuarto} ${reserva.apartamento.numeroQuarto}</td>
                            <td> ${reserva.hospede.nome}</td>
                            <td> ${reserva.estacionamento.idVaga}</td>
                            <td> ${reserva.recepcionista.nome}</td>                           
                            <td><a href="Controller?tarefa=NovaHospedagem&id=<c:out value="${reserva.idReserva}"/>">Validar</a></td>                            
                        </form>
                        </tr>
                    </c:forEach>
                </tbody>
            </table><br><br>             
        </div>
    </body>
</html>
