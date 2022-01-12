<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/22/2021
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Modify Receptionist Information</title>
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
            <h3 style="text-align: center; color: blue">RECEPTIONIST INFORMATION MODIFY</h3>
            <form method="post" id="create-form">
                <form>
                    <div>

                        <label for="Employee_id"><b>RECEPTIONIST ID: </b></label>
                        <input type="number" id="Employee_id" name="Employee_id"><br><br>


                        <label for="r1_password"><b> Modify Receptionist Password  </b> </label><br><br>
                        <input type="Password" id="r1_password" name="r1_password" />
                        <button type="submit" formaction="/modify_receptionist-servlet?column=Password" formmethod="post"> <b> Modify Password</b></button><br><br>


                        <label for="r1_address"><b> Updated Receptionist Address </b> </label> <br><br>
                        <input type="text" id="r1_address" name="r1_address">
                        <button type="submit" formaction="/modify_receptionist-servlet?column=Address" formmethod="post"><b>Modify Address</b></button><br><br>

                        <label for="r1_salary"><b> Updated Receptionist Salary: </b></label><br><br>
                        <input type="number" id="r1_salary" name="r1_salary">
                        <button type="submit" formaction="/modify_receptionist-servlet?column=Salary" formmethod="post"><b>Modify Salary</b></button><br><br>
                    </div>
                </form>
                <br><br>
                <button class="button1" type="submit" form="create-form" formmethod="post" formaction="/create_receptionist-servlet" style="text-decoration: none; color: white">Create Receptionist</button>
            </form>
            <br><br><br>
            <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
            <button class="button1"><a href="modify_receptionist.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
            <button class="button1"><a href="/search_receptionist-servlet?task=ReceptionistSummary" style="text-decoration: none; color: white">Information Summary</a></button><br><br>
            <button class="button1"> <a href="/search_receptionist-servlet?task=ReceptionistIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
            <button class="button1"><a href="update_receptionist.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
        </div>


    </form>
</fieldset>
</body>
</html>
