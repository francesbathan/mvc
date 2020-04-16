<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Books</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/newbook.css">
	</head>
	<body>
		<div class="container">
			<h1>Edit Book</h1>
			<form:form action="/books/${book.id}" method="put" modelAttribute="book">
			    <input type="hidden" name="_method" value="put">
			    <p>
			        <form:label class="label" path="title">Title</form:label>
			        <form:errors class="errormsg" path="title"/>
			        <form:input class="input" path="title"/>
			    </p>
			    <p>
			        <form:label class="label" path="description">Description</form:label>
			        <form:errors class="errormsg" path="description"/>
			        <form:textarea class="input" path="description"/>
			    </p>
			    <p>
			        <form:label class="label" path="language">Language</form:label>
			        <form:errors class="errormsg" path="language"/>
			        <form:input class="input" path="language"/>
			    </p>
			    <p>
			        <form:label class="label" path="numberOfPages">Pages</form:label>
			        <form:errors class="errormsg" path="numberOfPages"/>     
			        <form:input class="input" type="number" path="numberOfPages"/>
			    </p>    
			    <input class="btn" type="submit" value="Submit"/>
			</form:form> 
		</div>
	</body>
</html>