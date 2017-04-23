<%-- 
    Document   : StronaProdukty
    Created on : 2017-04-10, 10:45:48
    Author     : 195058
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="WEB-INF/Resources/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table>
            <thead>
                <th>ProductId</th>
                <th>ProductName</th>
            </thead>
            <thead>
                <c:forEach items="${MojaLista}" var="product">
                    <tr>
                        <td>${product.ProduktId}</td>
                        <td>${product.ProduktName}</td>
                    </tr>
                </c:forEach>
            </thead>
        </table>
    </body>
</html>
