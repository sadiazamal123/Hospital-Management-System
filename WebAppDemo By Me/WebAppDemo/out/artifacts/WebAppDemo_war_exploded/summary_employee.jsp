<%@ page import="java.util.ArrayList" %>
<%@ page import="Models.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Existing Employees Summary</title>
    <style>

        body {
            margin-top: 30px;
            margin-left: 400px;
            margin-right: 420px;
            font-family: roboto, 'Noto Sans Myanmar UI', arial, sans-serif;
        }

        table, th, td {
            background-color: lightcoral;

            text-align: center;
            border: 1px solid black;
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
            height: 55px;
            width: auto;
        }

    </style>
</head>
<body>

<div>
        <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
        <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>
        <h3 style="text-align: center; color: blue">Existing Employees Summary</h3>
        <form method="post" id="create-form">
            <table>
                <tr>
                    <th>EMPLOYEE ID</th>
                    <th>USERNAME</th>
                    <th>PASSWORD</th>
                    <th>SALARY</th>
                    <th>ADDRESS</th>
                    <th>DATE OF BIRTH</th>
                    <th>GENDER</th>

                </tr>
                <%

                    ArrayList<Employee> EmployeeSummary = (ArrayList<Employee>) session.getAttribute("EmployeeSummary");
                    for(Employee employee: EmployeeSummary)
                    {
                        out.print(String.format("<tr>" +
                                "<td>" + employee.getEmployee_id() + "</td>" +
                                "<td>" + employee.getUserName() + "</td>" +
                                "<td>" + employee.getPassword() + "</td>" +
                                "<td>" + employee.getSalary() + "</td>" +
                                "<td>" + employee.getAddress () + "</td>" +
                                "<td>" + employee.getDob() + "</td>" +
                                "<td>" + employee.getGender() + "</td>" +
                                "</tr>"));
                    }


                %>
            </table>
            <br><br>

            <button class="button1"><a href="create_employee.jsp" style="text-decoration: none; color: white">Create Employee</a></button>
        </form>
        <br><br><br>
        <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
        <button class="button1"><a href="modify_employee.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
        <button class="button1"><a href="/search_employee-servlet?task=EmployeeSummary" style="text-decoration: none; color: white">Information Summary</a></button><br><br>
        <button class="button1"> <a href="/search_employee-servlet?task=EmployeeIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
        <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
        <button class="button1"><a href="update_employee.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
        <button class="button1"><a href="delet_employee.jsp" style="text-decoration: none; color: white">Delete Information</a></button><br><br>
        <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>

        <% session.removeAttribute("EmployeeSummary"); %>
    </div>



</body>
</html>
