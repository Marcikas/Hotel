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
        <link rel="icon" href="img/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospedagem</title>
        <link rel="styleSheet" type="text/css" href="css/style.css" media="screen" >
    </head>
    <body>
        
        
        
        <div class="navbar" ><img src="img/estrada.png"></div>     
        <br/><br/>
        
        <center><h1> Estacionamentos</h1></center><br/><br/>

        
        <div class="ListaE1">
        
        <h2>Alugar estacionamento a parte</h2>
        <form action="Controller">
            Hóspede: 
            <select name="hospede">
                <c:forEach var="hospede" items="${hospede}">
                    <option value="${hospede.id}">${hospede.nome}</option>                    
                </c:forEach>
            </select><br/><br/>
            Vagas disponiveis:
            <select name="estacionamento">
                <c:forEach var="est" items="${estacionamento}">
                    <c:if test="${est.disponibilidade == true}">
                        <option value="${est.idVaga}">${est.idVaga}</option> 
                    </c:if>    
                </c:forEach>
            </select><br/><br/>
            <input type="hidden" name="tarefa" value="Estacionamentos">
            <input type="hidden" name="metodo" value="alugaEstacionamento">
            <button type="submit" class="botao">Alugar</button>
        </form>
        
        <br/><br/>
        </div>
        
         <br/><br/>
        <div class="ListaE2">
        
        <h3>Situação das vagas</h3><br>
        
        <table class="table">
                <thead class="thead-dark">
                    <tr>                        
                        <th scope="col" class="itemLista">Vaga</th>                          
                        <th scope="col" class="itemLista">Status</th>                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="est" items="${estacionamento}">
                        <tr>   
                        <form action="Controller">
                            <td class="itemLista"> ${est.idVaga}</td>
                            <c:choose>
                                <c:when test="${est.disponibilidade == false}"><td class="itemLista">OCUPADA</td></c:when>
                                <c:otherwise><td class="itemLista">DISPONIVEL</td ></c:otherwise>
                            </c:choose>                          
                        </form>
                        </tr>
                    </c:forEach>
                </tbody>
            </table><br><br>
            <center><button type="submit" class="botao" onclick="history.back()">Voltar</button></center>
            <br><br>
            </div>
         
         
         
         
            <div class="footer2"> </div>
    </body>
</html>
