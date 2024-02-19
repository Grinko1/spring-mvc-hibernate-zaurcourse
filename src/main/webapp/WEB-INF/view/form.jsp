<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<body>
<h2>Add employee</h2>
<br/>


<form:form action="/save" modelAttribute="employee" method="get">
<form:hidden path="id"/>
Name <form:input path="name"/>
<form:errors path="name"/>
</br>
Surname <form:input path="surname"/>
<form:errors path="surname"/>
<br/>
Salary <form:input path="department"/>
<form:errors path="department"/>
<br/>
Salary <form:input path="salary"/>
<form:errors path="salary"/>
<br/>

<input type="submit"/>
</form:form>
</body>
</html>
