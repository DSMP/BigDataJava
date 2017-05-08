<%-- 
    Document   : koszyczek
    Created on : 2017-05-08, 10:57:12
    Author     : 195058
--%>

<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="koszyk" class="java.util.HashSet" scope="session"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>koszyk</title>
    </head>
    <body>
        <ol>
            <%
                String t = request.getParameter("towar");
                if(t != null)
                    koszyk.add(t);
                for (Iterator it = koszyk.iterator(); it.hasNext();) {
                        out.println("<li>" + it.next() + "</li>");                        
                    }
            %>
        </ol>
    </body>
</html>
