<%-- 
    Document   : adicionado
    Created on : 12/06/2018, 16:41:35
    Author     : Marciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <link rel="styleSheet" type="text/css" href="css/style.css" media="screen" >
        <link rel="icon" href="img/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Estrada Feliz - Cadastro concluído</title>
    </head>
    <body>
        <div class="navbar" ><img src="img/estrada.png"></div>
       <div class="login"> <h3>${pessoa.nome} foi adicionado com sucesso!</h3> 
      <button type="submit" class="botao" onclick="history.back()">Voltar</button>
       </div>
    </body>
</html>
