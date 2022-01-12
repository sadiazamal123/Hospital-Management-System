<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/12/2021
  Time: 2:09 AM
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
    <form>
        <div>
            <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
            <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>


            <form method="post" id="create-form">
                <div>
                    <h3 style="color: darkslateblue; text-align: center">Doctor's Attending Information</h3><br><br>
                    <label for="doctorid"><b> Doctor Id: </b></label><input type="number" id="doctorid" name="doctorid"><br><br>

                    <label for="patientid"> <b>Patient Id: </b></label> <input type="number" id="patientid"  name="patientid"><br><br>
                    <label for="timeperiod"><b>Time period:</b> </label> <input type="number" id="timeperiod" name="timeperiod"><br><br>

                    <br><br>
                </div>


                <button class="button1" type="submit" form="create-form" formmethod="post" formaction="/create_employee-servlet" style="text-decoration: none; color: white">Create Employee</button>
            </form>
            <br><br><br>
            <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
            <button class="button1"><a href="modify_employee.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
            <button class="button1"><a href="Summary.jsp" style="text-decoration: none; color: white">Information Summery</a></button><br><br>
            <button class="button1"> <a href="/search-servlet?task=search-employee_id" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
            <button class="button1"><a href="update_employee.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>


        </div>

</form>
</fieldset>

</body>

</html>
