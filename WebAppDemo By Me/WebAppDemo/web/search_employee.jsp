<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Employee Information</title>
    <style>
        body {
            margin-top: 30px;
            margin-left: 400px;
            margin-right: 420px;
            font-family: roboto, 'Noto Sans Myanmar UI', arial, sans-serif;
        }
        .fieldset1 {
            padding-left: 50px;
            background-color: #E8E8E8;
            letter-spacing: normal;  }
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
            width: auto;  }
    </style>
</head>
<body>
<fieldset class="fieldset1">
    <form>

            <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
            <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>
            <h3 style="text-align: center; color: blue">SEARCH EXISTING EMPLOYEE</h3><br><br>
            <form method="post" id="create-form">
                <form>
                    <div>
                        <form>
                            <label for="all-employees"><b>Select an Employee ID </b></label>
                            <select name="Employee_id" id="all-employees"><br><br>
                                <%
                                    ArrayList<Integer> EmployeeIdList = (ArrayList<Integer>) session.getAttribute("EmployeeIdList");
                                    for(int Employee_id : EmployeeIdList)
                                    {
                                        out.print(String.format("<option value=\"" + Employee_id + "\">" + Employee_id + "</option>"));
                                    }
                                %>
                            </select>
                            <br><br> <br>
                            <button class="button1" type="submit"  formaction="/search_employee-servlet?task=search_employee-group-by-id" formmethod="post" value="Search Employee" style="text-decoration: none; color: white">Search Employee</button>
                        </form>

                    </div>
                </form>
            <br><br><br>
            <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
                <button class="button1"><a href="create_employee.jsp" style="text-decoration: none; color: white">Create Employee</a></button>
                <button class="button1"> <a href="search_employee-servlet?task=EmployeeSummary" style="text-decoration: none; color: white"> Information Summary</a> &emsp;</button><br><br>
            <button class="button1"><a href="update_employee.jsp" style="text-decoration: none; color: white">Update Information</a></button>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
            <button class="button1"><a href="modify_employee.jsp" style="text-decoration: none; color: white">Modify Information</a></button><br><br>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>

    </form>
</fieldset>

<% session.removeAttribute("EmployeeIdList"); %>
</body>
</html>
