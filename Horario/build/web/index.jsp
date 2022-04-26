<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 21:41:40
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="horario.Horario" %>
<!DOCTYPE html>
<%
    Horario horaAtual;   
    horaAtual = new Horario();
    horaAtual.setHora(21);
    horaAtual.setMinutos(47);
    horaAtual.setSegundos(25);

    Horario horaIntervalo = new Horario();
    horaIntervalo.setHorario(20, 45, 15);
    

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Nome: Hugo Sergio Alves de Souza</h3>
        <h2>1290482023025</h2>
        <h3>Sabrina Maria Andrade Carvalho</h3>
         <h2>1290481923051</h2>
        <h3>Horario Atual</h3>
        <div><%= horaAtual.getHorario() %></div>
        <h3>Horario Intervalo</h3>
        <div><%= horaIntervalo.getHorario()%></div>
    </body>
</html>
