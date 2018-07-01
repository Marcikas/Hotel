<%-- 
    Document   : estacionamento
    Created on : 30/06/2018, 14:04:24
    Author     : Marciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel - Estacionamento</title>
    </head>
    <body>
        <h1>Estacionamentos</h1>
        <br><br><br>
        <h2>Alugar estacionamento a parte</h2>
        <form action="Controller">
            Hospede 
            <select name="hospede">
                <c:forEach var="hospede" items="${hospede}">
                    <option value="${hospede.id}">${hospede.nome}</option>                    
                </c:forEach>
            </select>
            Vagas disponiveis
            <select name="estacionamento">
                <c:forEach var="est" items="${estacionamento}">
                    <c:if test="${est.disponibilidade == true}">
                        <option value="${est.idVaga}">${est.idVaga}</option> 
                    </c:if>    
                </c:forEach>
            </select>
            <input type="hidden" name="tarefa" value="Estacionamentos">
            <input type="hidden" name="metodo" value="alugaEstacionamento">
            <button type="submit">Alugar</button>
        </form>
        <br>
        <h3>Situação das vagas</h3><br>
        
        <table class="table">
                <thead class="thead-dark">
                    <tr>                        
                        <th scope="col">Vaga</th>                          
                        <th scope="col">Status</th>                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="est" items="${estacionamento}">
                        <tr>   
                        <form action="Controller">
                            <td> ${est.idVaga}</td>
                            <c:choose>
                                <c:when test="${est.disponibilidade == false}"><td>OCUPADA</td></c:when>
                                <c:otherwise><td>DISPONIVEL</td></c:otherwise>
                            </c:choose>                          
                        </form>
                        </tr>
                    </c:forEach>
                </tbody>
            </table><br><br>
    </body>
</html>
