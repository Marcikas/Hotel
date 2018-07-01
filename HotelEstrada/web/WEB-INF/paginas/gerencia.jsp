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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel - Gerência</title>
    </head>
    <body>
        <h1>Área do Gerente</h1>
        
        <h3>Funcionários do hotel</h3>
        
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
    </body>
</html>
