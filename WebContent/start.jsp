<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Monitor Manager</title>
</head>
<body>
	<div align="center">
		<h1>Monitor Manager</h1>
		<h2>Add monitor:</h2>
		<form action="add.jsp">
			Resolution: <input type="text" name="resolution"
				value="${monitor.resolution}" /> Brand: <input type="text"
				name="brand" value="${monitor.brand}" /> <input type="submit"
				value="OK" />
		</form>
		<h2>Change monitor data:</h2>
		<form action="update.jsp">
			Resolution: <input type="text" name="resolution"
				value="${monitor.resolution}" /> Brand: <input type="text"
				name="brand" value="${monitor.brand}" /> <input type="submit"
				value="OK" />
		</form>
		<h2>Delete monitor:</h2>
		<form action="delete.jsp">
			Resolution: <input type="text" name="resolution"
				value="${monitor.resolution}" /> Brand: <input type="text"
				name="brand" value="${monitor.brand}" /> <input type="submit" value="OK" />
		</form>

		<form action="searchResults.jsp">
			<h2>Find monitor:</h2>
			Resolution: <input type="text" name="resolution"
				value="${monitor.resolution}" /> Brand: <input type="text"
				name="brand" value="${monitor.brand}" /> <input type="submit"
				value="OK" />
		</form>
		<form action="all.jsp">
			<h2>See all monitors<input type="submit" value="OK" />
			</h2>
		</form>
	</div>
</body>
</html>