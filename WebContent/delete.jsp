<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="sprawdzian.service.*"%>
<%@page import="sprawdzian.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add</title>
</head>
<body>
	<jsp:useBean id="monitor" class="sprawdzian.domain.Monitor"
		scope="session"></jsp:useBean>
	<jsp:useBean id="monitorManager"
		class="sprawdzian.service.MonitorManagerMemory" scope="application" />
	<jsp:setProperty name="monitor" property="*" />

	<%
		if (request.getParameter("rozdzielczosc") != null
				&& request.getParameter("marka") != null) {
			monitorManager.deleteMonitor(monitor);
		}
	%>
	<h1>All monitors:</h1>
	<h2>${monitorManager.allMonitors}</h2>
	<a href="start.jsp">Come back to start!</a>
</body>
</html>