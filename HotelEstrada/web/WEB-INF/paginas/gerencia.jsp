<%-- 
    Document   : funcionarios
    Created on : 01/07/2018, 01:31:30
    Author     : Marciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="styleSheet" type="text/css" href="css/style.css" media="screen" >
        <title>Hotel Estrada Feliz - Dashboard</title>
    </head>
    <body>
        <div class="navbar" ><img src="img/estrada.png"></div>     
        <br/><br/>
        <center><h1>Área do Gerente</h1></center>
        <br/>
       <center> <h2>Funcionários do hotel</h2></center>
        <br/><br/>
        <div class="ListaG">
        <table class="table">
                <thead class="thead-dark">
                    <tr>                        
                        <th scope="col">Funcionário</th>                         
                        <th scope="col">Salário desse mês</th>                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="func" items="${funcionario}">
                        <tr>                    
                            <td> ${func.nome}</td>                            
                            <td> ${func.salario}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table><br><br>
            
            <center><button type="submit" class="botao" onclick="history.back()">Voltar</button></center>
            <br/><br/>
            
            </div>
            
        <div class="footer2"> </div>
        
    </body>
</html>
