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
        <link rel="icon" href="img/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de pessoas</title>
        <link rel="styleSheet" type="text/css" href="css/style.css" media="screen" >
    </head>
    <body>
         <div class="navbar" ><img src="img/estrada.png"></div>        
        <br><br><br>
        <h1><center>Pessoas cadastradas:</center></h1>
        <div class="container"><br>
           <div class="Lista">
            <table class="table">
                <thead class="thead-dark">
                    <tr>                        
                        <th scope="col" class="itemLista">Id</th>
                        <th scope="col" class="itemLista">Nome</th>  
                        <th scope="col" class="itemLista">CPF</th>
                        <th scope="col" class="itemLista">Endereço</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pessoa" items="${pessoa}">
                        <tr>   
                        <form action="Controller">
                            <td class="itemLista"> ${pessoa.id}</td>
                            <td class="itemLista"> ${pessoa.nome}</td>
                            <td class="itemLista"> ${pessoa.cpf}</td>     
                            <td class="itemLista"> ${pessoa.endereco}</td>
                            <td class="itemLista"><a href="Controller?tarefa=Editar&metodo=getEdit&id=<c:out value="${pessoa.id}"/>">
                                    <font color="blue">Editar </font>
                                </a></td>
                            <td class="itemLista"><a href="Controller?tarefa=Remover&id=<c:out value="${pessoa.id}"/>">
                                <font color="red">    Remover </font>
                                </a></td>
                        </form>
                        </tr>
                        <tr></tr>
                    </c:forEach>
                        
                </tbody>
            </table>
               <br/><br/>
               <center><button type="submit" class="botao" onclick="history.back()">Voltar</button></center>
               <br/><br/>
               
               </div>
                           
        </div>
        
        
        <div class="footer2"> </div>
    </body>
</html>