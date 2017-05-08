<%-- 
    Document   : towar
    Created on : 2017-05-08, 11:03:12
    Author     : 195058
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <input id="nowy" placeholder="wstaw item do koszyka"/>
        <%
            session.setAttribute("", value);
        %>
        <a href="koszyczek.jsp">idz do koszyka</a>
    </body>
</html>
