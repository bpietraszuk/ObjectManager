<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="service.*"%>
<%@page import="domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<jsp:useBean id="monitor" class="domain.Monitor"
		scope="session"></jsp:useBean>
	<jsp:useBean id="monitorManager"
		class="service.MonitorManagerMemory" scope="application" />

	<jsp:setProperty name="monitor" property="*"/>
	<%
		if (request.getParameter("resolution") != null && request.getParameter("brand") != null) {

			monitorManager.addMonitor(monitor);
			
		}
	%>
	<h2>Added monitor: <%=monitor.toString()%></h2>



	<h1>All monitors:</h1>
	<h2>${monitorManager.allMonitors}</h2>
	<a href="start.jsp">Come back to start!</a>
</body>
</html>