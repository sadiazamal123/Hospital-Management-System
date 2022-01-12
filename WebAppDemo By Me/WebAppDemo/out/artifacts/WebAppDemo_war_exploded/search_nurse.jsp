<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/22/2021
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Search Nurse Info</title>
</head>
<body>
<img src="images/database.png" alt="database logo">
<h3><i>SEARCH INFO OF NURSE</i></h3><br>

<form action="/search-servlet?task=searchby-n1_nurse_id" method="post">
    <label for="all-employee"><b>Select a Nurse</b></label>
    <select name="employee-id" id="all-employee">
        <%
            ArrayList<Integer> groupIdList = (ArrayList<Integer>) session.getAttribute("group-id-list");
            for(int groupId: groupIdList)
            {
                out.print(String.format("<option value=\"" + groupId + "\">" + groupId + "</option>"));
            }
        %>
    </select>
    <br><br>
    <input type="submit" value="Search Group" >
</form>
<a href="/search-servlet?task=search-summary">Show Groups Summary</a>
<br><br>
<a href="index.jsp">Hoome Page</a> &emsp;
<a href="Create.jsp">Create New Group</a> &emsp;
<a href="Update.jsp">Update Group Info</a>

<% session.removeAttribute("group-id-list"); %>

</body>
</html>

