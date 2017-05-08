<%-- 
    Document   : sesja
    Created on : 2017-05-05, 14:05:30
    Author     : drzymala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
<%
	HttpSession sesja = request.getSession(true);
	String heading;
	Integer accessCount = (Integer) sesja.getAttribute("accessCount");

	if (accessCount == null) {
		accessCount = new Integer(0);
		heading = "Witamy, nowy kliencie";
	} else {
		heading = "Witamy ponownie";
		accessCount = new Integer(accessCount.intValue() + 1);
	}
	session.setAttribute("accessCount", accessCount);

	out.println(heading+" "+accessCount+" raz");
	if (accessCount > 10) {
		sesja.invalidate();
	}
%>
<a href="newjsp1.jsp"> Dalej</a>
</body>
</html>
