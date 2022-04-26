<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 19:33:32
    Author     : Fatec
--%>

<%@page import="demo.Database"%>
<%@page import="demo.Data"%>
<%@page import="demo.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data hoje;   
    hoje = new Data();
    hoje.setAno(2022);
    hoje.setMes(4);
    hoje.setDia(25);

    Data amanha = new Data();
    amanha.setData(26, 4, 2022);
    
    Data nascimento = new Data(1, 7, 1979);

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - POO</title>
    </head>
    <body>
        <h1>POO</h1>
        <h2>Index</h2>
        <h3>Exemplo com datas</h3>
        <div>
            Hoje é dia: <%=hoje.getData() %>
        </div>
        <div>
            Amanhã será: <%= amanha.getData() %>
        </div>
        <div>
            Aniversario do pupo: <%= nascimento.getAniversario() %>
        </div>
        <hr>
        <h3>
            Exemplo de listagem de contatos:
        </h3>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Nascimento</th>
            </tr>
            <% for(Contato c: Database.getContatos()){%>
            <tr>
                <td><%= c.getNome()%></td>
                <td><%= c.getTelefone()%></td>
                <td><%= c.getNascimento().getAniversario()%></td>
            </tr>
            <% }%>
            
        </table>
    </body>
</html>
