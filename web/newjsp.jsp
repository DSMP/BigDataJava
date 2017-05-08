<%-- 
    Document   : sesja2
    Created on : 2017-05-05, 14:06:44
    Author     : drzymala
--%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
	<%
		Date created = new Date(session.getCreationTime());
		Date accessed = new Date(session.getLastAccessedTime());
		out.println("ID " + session.getId() + "<BR>");
		out.println("Created: " + created + "<BR>");
		out.println("Last Accessed: " + accessed + "<BR>");
		// set session info if needed
		String dataName = request.getParameter("dataName");
		if (dataName != null && dataName.length() > 0) {
			String dataValue = request.getParameter("dataValue");
			session.setAttribute(dataName, dataValue);
		}
		// print session contents
		out.println(" The following data is in your session: ");
		Enumeration e = session.getAttributeNames();
		while (e.hasMoreElements()) {
			String name = (String) e.nextElement();
			String value = session.getAttribute(name).toString();
			out.println(name + " = " + value);
		}
	%>
    </body>
</html>
