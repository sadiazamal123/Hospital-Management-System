<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/12/2021
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Patient</title>
    <style>
        body {
            margin-top: 100px;
            margin-left: 420px;
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
            width: 190px;
        }

    </style>
</head>

<body>
<fieldset class="fieldset1">
    <form>
        <div>

            <div style="text-align: center">
                <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
                <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b>

                <h2 style=color:blue>Functionalities of Patient</h2> <br>
                <button class="button1"><a href="create_patient.jsp" style="text-decoration: none; color: white">Patient</a> </button><br> <br>
                <button class="button1"><a href="create_bill.jsp" style="text-decoration: none; color: white">Bill</a> <br> <br></button><br> <br>
                <button class="button1"><a href="create_allocate.jsp" style="text-decoration: none; color: white">Allocated</a> <br> <br></button><br> <br>
                <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Log Out</a> <br> <br></button><br> <br>

            </div>
        </div>

</form>
</fieldset>
</body>

</html>

