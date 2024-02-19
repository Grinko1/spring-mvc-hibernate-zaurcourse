
<html>
<body>
<h2>All employees</h2>
<br/>
<table>
    <tr>
    <th>Name</th>
     <th>Surname</th>
      <th>department</th>
       <th>salary</th>
    </tr>
    <c:forEach var="emp" items="${employees}">
        <tr>
        <td>${emp.name}</td>
         <td>${emp.surname}</td>
          <td>${emp.department}</td>
           <td>${emp.salary}</td>


        </tr>
     </c:forEach>
</table>
<a href="/add">add new employee</a>
<br/>
<hr/>
<a href="/update/1">update #1</a>
<a href="/delete/1">delete #1</a>
<br/>
<hr/>
<a href="/update/2">update #2</a>
<a href="/delete/2">delete #2</a>
<br/>
<hr/>
<a href="/update/3">update #3</a>
<a href="/delete/3">delete #3</a>
<br/>
<hr/>
<a href="/update/5">update #4</a>
<a href="/delete/5">delete #4</a>
<br/>
<hr/>
</body>
</html>
