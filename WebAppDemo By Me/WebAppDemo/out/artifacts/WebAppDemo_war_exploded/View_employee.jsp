<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Models.Employee" %>
<html>
<head>
    <title>View Employee Information</title>

    <style>
        body {
            margin-top: 100px;
            margin-left: 420px;
            margin-right: 420px;
            font-family: roboto, 'Noto Sans Myanmar UI', arial, sans-serif;
        }

        .button1 {
            background-color: #253071;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 10%;
        }


    </style>
</head>
<body>

<img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
<b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>
<h3 style="text-align: center; color: blue">EMPLOYEE DETAILS</h3>


<%
    Employee employee = (Employee)session.getAttribute("employee");
    out.print(String.format("<b> Employee ID: </b>" + employee.getEmployee_id() + "<br><br>" +
            "<b> User name: </b>" + employee.getUserName() + "<br>" +
            "<b> Password: </b>" + employee.getPassword() + "<br><br>" +
            "<b> Salary: </b>" + employee.getSalary() + "<br><br>" +
            "<b> Address:</b>" + employee.getAddress () + "<br>" +
            "<b> Date of Birth:</b>" + employee.getDob() + "<br><br>" +
            "<b> Gender: </b>" + employee.getGender() + "<br><br><br>"));


%>

<br><br><br>
<button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
<button class="button1"> <a href="create_employee.jsp" style="text-decoration: none; color: white">Create New Employee</a> &emsp; </button>
<button class="button1"> <a href="/search_employee-servlet?task=EmployeeIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button><br><br>
<button class="button1"><a href="update_employee.jsp" style="text-decoration: none; color: white">Update Information</a></button>
<button class="button1"><a href="modify_employee.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
<button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button><br><br>
<button class="button1"><a href="/search_employee-servlet?task=EmployeeSummary" style="text-decoration: none; color: white">Information Summary</a></button>
<button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
<% session.removeAttribute("employee"); %>

</body>
</html>
