<%-- 
    Document   : listaHospedagens
    Created on : 02/07/2018, 20:12:59
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Hospedagens</title>
        <link rel="styleSheet" type="text/css" href="css/style.css" media="screen" >
    </head>
    <body>

        <div class="navbar" ><img src="img/estrada.png"></div>        
        <br><br><br>
        <h1><center>Hospedagens Ativas</center></h1>
        <div class="container"><br>
            <div class="Lista">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>                        
                            <th scope="col" class="itemLista3">Nome</th>
                            <th scope="col" class="itemLista3">Data Entrada </th>
                            <th scope="col" class="itemLista3">Data Saída </th> 
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="hosp" items="${hospedagem}">
                            <tr>   
                        <form action="Controller">
                            <td class="itemLista3"> ${hosp.reserva.hospede.nome}</td>
                            <td class="itemLista3"> ${hosp.dataEntrada}</td>
                            <td class="itemLista3"> ${hosp.dataSaida}</td>
                            <td class="itemLista3">
                                <a href="Controller?tarefa=Checkout&id=<c:out value="${hosp.idHospedagem}"/>"><font color="green">Checkout</font></a>
                            </td>               
                        </form>
                        </tr>
                    </c:forEach>
                </table>
                <br><br>    
                <br/><br/>
                <center><button type="submit" class="botao" onclick="history.back()">Voltar</button></center>
                <br/><br/>
            </div>


        </div>  

    </body>
</html>
