<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/16/2021
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Create New Receptionist</title>
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
                <h3 style="color: darkslateblue; text-align: center">Receptionist Information Fillup</h3><br><br>
                <label for="r1-receptionist_id"><b>Receptionist ID: </b></label> <input type="number" id="r1-receptionist_id" name="r1-receptionist_id"><br><br>
                <label for="r1-username"><b>User name: </b></label> <input type="text" id="r1-username" name="r1-username" /><br><br>
                <label for="r1-password"><b>Password:</b> </label> <input type="password" id="r1-password" name="r1-password" /><br><br>
                <label for="r1-salary"><b> Salary: </b></label> <input type="number" id="r1-salary" name="r1-salary"><br><br>
                <label for="r1-address"><b>Address:</b> </label> <input type="text" id="r1-address" name="r1-address"><br><br>
                <label for="r1-dob"> <b>Date of Birth: </b></label>  <input type="date"  id="r1-dob" name="r1-dob"><br><br>
                <label for="m"><b>Gender:</b></label><input type="radio"  id="M"  name="r1-gender" value="M">Male
                <input type="radio" id="f"  name="r1-gender" value="F">Female
                <input type="radio" id="o"  name="r1-gender" value="O">Other<br><br>

                <br><br>
            </div>
            <button class="button1" type="submit" form="create-form" formmethod="post" formaction="/search_receptionist-servlet" style="text-decoration: none; color: white">Create Receptionist</button>
        </form>
        <br><br><br>
        <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
        <button class="button1"><a href="Update.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
        <button class="button1"><a href="/search_receptionist-servlet?.task=EmployeeSummary" style="text-decoration: none; color: white">Information Summery</a></button><br><br>
        <button class="button1"> <a href="/search_receptionist-servlet?task=ReceptionistIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
        <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
        <button class="button1"><a href="Update.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
        <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
    </div>

</fieldset>

</body>
</html>
