<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/22/2021
  Time: 12:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Modify Nurse Information</title>
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
            <h3 style="text-align: center; color: blue">NURSE INFORMATION MODIFY</h3>
            <form method="post" id="create-form">
                <form>
                    <div>
                        <label for="Employee_id"><b>NURSE ID: </b></label>
                        <input type="number" id="Employee_id" name="Employee_id"><br><br>


                        <label for="n1_password"><b> Modify Nurse Password  </b> </label><br><br>
                        <input type="Password" id="n1_password" name="n1_password" />
                        <button type="submit" formaction="/modify_nurse-servlet?column=Password" formmethod="post"> <b> Modify Password</b></button><br><br>


                        <label for="n1_address"><b> Updated Nurse Address </b> </label> <br><br>
                        <input type="text" id="n1_address" name="n1_address">
                        <button type="submit" formaction=" /modify_nurse-servlet?column=Address" formmethod="post"><b>Modify Address</b></button><br><br>

                        <label for="n1_salary"><b> Updated Nurse Salary: </b></label><br><br>
                        <input type="number" id="n1_salary" name="n1_salary">
                        <button type="submit" formaction=" /modify_nurse-servlet?column=Salary" formmethod="post"><b>Modify Salary</b></button><br><br>
                    </div>
                </form>
                <br><br>
                <button class="button1" type="submit" form="create-form" formmethod="post" formaction="/create_nurse-servlet" style="text-decoration: none; color: white">Create Nurse</button>
            </form>
            <br><br><br>
            <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
            <button class="button1"><a href="modify_nurse.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
            <button class="button1"><a href="/search_nurse-servlet?task=EmployeeSummary" style="text-decoration: none; color: white">Information Summary</a></button><br><br>
            <button class="button1"> <a href="/search_nurse-servlet?task=EmployeeIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
            <button class="button1"><a href="update_nurse.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
        </div>


    </form>
</fieldset>
</body>
</html>
