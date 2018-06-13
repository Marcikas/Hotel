<%-- 
    Document   : lista
    Created on : 13/06/2018, 15:25:50
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
            <h3>Pessoas cadastradas: </h3><br><br>
            <table class="table">
                <thead class="thead-dark">
                    <tr>                        
                        <th scope="col">Id</th>
                        <th scope="col">Nome</th>                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pessoa" items="${pessoa}">
                        <tr>   
                        <form action="Controller">
                            <td> ${pessoa.id}</td>
                            <td> ${pessoa.nome}</td>
                            <td><button type="submit">Remover</button></td>
                            <input type="hidden" name="id" value="${pessoa.id}">
                            <input type="hidden" name="tarefa" value="Remover">                            
                        </form>
                        </tr>
                    </c:forEach>
                </tbody>
            </table><br><br>             
        </div>
    </body>
</html>
