<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/20/2021
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
    <title>Delete Employee Info</title>
</head>
<body>
<img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
<h3><i>DELETE EMPLOYEE INFORMATION</i></h3><br>

<form action="/delete_employee-servlet?task=delete-by-Employee_id" method="post">
    <label for="e1-employee_id"><b>Choose a employee id to delete </b></label>
    <select  name="e1-employee_id" id="e1-employee_id">

        <%
            ArrayList<Integer> IdList = (ArrayList<Integer>) session.getAttribute("employee-id-list");
            for(int Employee_id: IdList)
            {
                out.print(String.format("<option value=\"" + Employee_id + "\">" + Employee_id + "</option>"));
            }
        %>
    </select>
    <br><br>
    <input type="submit" value="Delete Employee" >
</form>

<br><br>
<a href="index.jsp">Hoome Page</a> &emsp;

    <% session.removeAttribute("employee-id-list"); %>

