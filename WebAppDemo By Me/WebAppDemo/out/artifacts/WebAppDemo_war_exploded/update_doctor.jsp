<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/21/2021
  Time: 9:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Doctor Information</title>
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
        <div>
            <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
            <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>
            <h3 style="text-align: center; color: blue">DOCTOR INFORMATION UPDATE</h3>
            <form method="post" id="create-form">
                <form>
                    <div>
                        <label for="Employee_id"><b>DOCTOR ID: </b></label>
                        <input type="number" id="Employee_id" name="Employee_id"><br><br>


                        <label for="d1_password"><b> Updated Employee Password  </b> </label><br><br>
                        <input type="Password" id="d1_password" name="d1_password" />
                        <button type="submit" formaction="/update_doctor-servlet?column=Password" formmethod="post"> <b> Update Password</b></button><br><br>


                        <label for="d1_address"><b> Updated Employee Address </b> </label> <br><br>
                        <input type="text" id="d1_address" name="d1_address">
                        <button type="submit" formaction=" /update_doctor-servlet?column=Address" formmethod="post"><b>Update Address</b></button><br><br>

                        <label for="d1_salary"><b> Updated Employee Salary: </b></label><br><br>
                        <input type="number" id="d1_salary" name="d1_salary">
                        <button type="submit" formaction=" /update_doctor-servlet?column=Salary" formmethod="post"><b>Update Salary</b></button><br><br>
                    </div>
                </form>
                <br><br>
                <button class="button1" type="submit" form="create-form" formmethod="post" formaction="/create_doctor-servlet" style="text-decoration: none; color: white">Create Doctor</button>
            </form>
            <br><br><br>
            <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
            <button class="button1"><a href="modify_doctor.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
            <button class="button1"><a href="Summary_doctor.jsp" style="text-decoration: none; color: white">Information Summery</a></button><br><br>
            <button class="button1"> <a href="/search_doctor-servlet?task=search-employee_id" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
            <button class="button1"><a href="update_doctor.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
        </div>
        </div>

    </form>
</fieldset>
</body>
</html>
