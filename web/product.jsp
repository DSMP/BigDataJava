<%-- 
    Document   : product
    Created on : 2017-04-10, 11:23:53
    Author     : drzymala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="Resources/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>
<!--        <div class="container">
            <div class="row">
                <div class="col-lg-offset-2 col-lg-8">
                    <form action="product" method="post">
                        <div class="form-group">
                            <label class="control-label col-md-2">Name:</label>
                            <div class="col-md-10">
                                <input type="text" class="form-c" name="pname"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-offset-2 col-lg-8">
                
            </div>
        </div>-->
        <table class="table table-striped table-hover">
            <thead>
                <th>ProductID</th>
                <th>Name</th>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td>${product.productId}</td>
                        <td>${product.name}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
<script src="Resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="Resources/js/jquery-3.2.1.js" type="text/javascript"></script>