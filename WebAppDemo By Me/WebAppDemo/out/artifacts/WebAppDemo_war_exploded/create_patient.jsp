<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/12/2021
  Time: 8:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Create New Patient</title>
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
                <h3 style="color: darkslateblue; text-align: center">Patient Information Fillup</h3><br><br>
                <label for="p1-patient_id"><b>Patient Id: </b></label> <input type="number" id="p1-patient_id" name="p1-patient_id"><br><br>
                <label for="p1-name"><b>Name: </b></label> <input type="text" id="p1-name" name="p1-name" /><br><br>
                <label for="p1-password"><b>Password:</b> </label> <input type="password" id="p1-password" name="p1-pi_password" /><br><br>
                <label for="p1-mobile_no"><b>Mobile Number:</b> </label> <input type="number" id="p1-mobile_no" name="p1-mobile_no"><br><br>
                <label for="p1-age"><b>Age:</b> </label> <input type="number" id="p1-age" name="p1-age"><br><br>
                <label for="p1-Date_Of_Birth"> <b>Date of Birth: </b></label>  <input type="date"  id="p1-Date_Of_Birth" name="p1-Date_Of_Birth"><br><br>
                <label for="m"><b>Gender:</b></label><input type="radio"  id="M"  name="p1-gender" value="M">Male
                <input type="radio" id="f"  name="p1-gender" value="F">Female
                <input type="radio" id="o"  name="p1-gender" value="O">Other<br><br>
                <br><br>
            </div>
            <button class="button1" type="submit" form="create-form" formmethod="post" formaction="/create_patient-servlet" style="text-decoration: none; color: white">Create Patient</button>
        </form>
        <br><br><br>
        <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
        <button class="button1"><a href="modify_patient.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
        <button class="button1"><a href="/search_patient-servlet?task=PatientSummary"  style="text-decoration: none; color: white">Information Summary</a></button><br><br>
        <button class="button1"> <a href="/search_patient-servlet?task=PatientIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
        <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
        <button class="button1"><a href="update_patient.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
        <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
    </div>

</fieldset>

</body>
</html>
