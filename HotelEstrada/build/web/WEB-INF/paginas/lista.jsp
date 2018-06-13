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
        <h1>Lista de pessoas cadastradas.</h1><br><br>
        
        <ul>
            <c:forEach var="pessoa" items="${pessoa}">
                <h2><li> ${pessoa.id}: ${pessoa.nome}</li></h2>
            </c:forEach>
        </ul>
    </body>
</html>
