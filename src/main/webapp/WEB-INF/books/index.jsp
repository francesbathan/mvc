<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
		<title>Books</title>
	</head>
	<body>
		<div class="container">
			<h1>All Books</h1>
			<table>
				<thead>
					<tr>
						<th>Title</th>
						<th>Description</th>
						<th>Language</th>
						<th>Number of Pages</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${books}" var="book">
					<tr>
						<td><c:out value="${book.title}"/></td>
						<td><c:out value="${book.description}"/></td>
						<td><c:out value="${book.language}"/></td>
						<td><c:out value="${book.numberOfPages}"/></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="newbook">
			<a href="/books/new">New Book</a>
			</div>
		</div>
	</body>
</html>