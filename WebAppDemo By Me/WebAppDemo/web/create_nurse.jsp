<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/16/2021
  Time: 1:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Create New Nurse</title>
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
            letter-spacing: normal;
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
<fieldset class="fieldset1">

    <div >
        <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
        <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>
        <h3 style="text-align: center; color: blue">SUBMIT YOUR INFORMATION</h3>
        <form method="post" id="create-form">

            <div>
                <h3 style="color: darkslateblue; text-align: center">Nurse Information Fillup</h3><br><br>
                <label for="n1-employee_id"><b>Nurse ID: </b></label> <input type="number" id="n1-employee_id" name="n1-employee_id"><br><br>
                <label for="n1-username"><b>User name: </b></label> <input type="text" id="n1-username" name="n1-username" /><br><br>
                <label for="n1-password"><b>Password:</b> </label> <input type="password" id="n1-password" name="n1-password" /><br><br>
                <label for="n1-salary"><b> Salary: </b></label> <input type="number" id="n1-salary" name="n1-salary"><br><br>
                <label for="n1-address"><b>Address:</b> </label> <input type="text" id="n1-address" name="n1-address"><br><br>
                <label for="n1-dob"> <b>Date of Birth: </b></label>  <input type="date"  id="n1-dob" name="n1-dob"><br><br>
                <label for="m"><b>Gender:</b></label><input type="radio"  id="M"  name="n1-gender" value="M">Male
                <input type="radio" id="f"  name="n1-gender" value="F">Female
                <input type="radio" id="o"  name="n1-gender" value="O">Other<br><br>


                <br><br>
            </div>
            <button class="button1" type="submit" form="create-form" formmethod="post" formaction="/create_nurse-servlet" style="text-decoration: none; color: white">Create Nurse</button>
        </form>
        <br><br><br>
        <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
        <button class="button1"><a href="modify_nurse.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
        <button class="button1"><a href="/search_nurse-servlet?task=NurseSummary" style="text-decoration: none; color: white">Information Summary</a></button><br><br>
        <button class="button1"> <a href="/search_nurse-servlet?task=NurseIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
        <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
        <button class="button1"><a href="update_nurse.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
        <button class="button1"><a href="delet_nurse.jsp" style="text-decoration: none; color: white">Delete Information</a></button><br><br>
        <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
    </div>

</fieldset>

</body>
</html>
