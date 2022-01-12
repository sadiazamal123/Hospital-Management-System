<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/12/2021
  Time: 11:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>test report bill</title>
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
        <div >
            <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
            <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>

            <h3 style="text-align: center; color: blue">SUBMIT YOUR INFORMATION</h3>
            <form method="post" id="create-form">

                <div>
                    <h3 style="color: darkslateblue; text-align: center">Patient Test Report Bill Information Fillup</h3><br><br>
                    <label for="repid"><b>Report Id: </b></label> <input type="number" id="repid" name="repid"><br><br>

                    <label for="prescription"><b>Prescription: </b></label> <input type="text"  id="prescription" name="prescription" /><br><br>
                    <label for="description"><b>Description:</b> </label> <input type="text" id="description" name="description"><br><br>
                    <label for="billdate"> <b>Date: </b></label>  <input type="date" id="billdate" name="billdate"><br><br>


                    <br><br>
                </div>


                <button class="button1" type="submit" form="create-form" formmethod="post" formaction="/create_receptionist-servlet" style="text-decoration: none; color: white">Create Test Report Bill</button>
            </form>
            <br><br><br>
            <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
            <button class="button1"><a href="Update.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
            <button class="button1"><a href="Summary.jsp" style="text-decoration: none; color: white">Information Summery</a></button><br><br>
            <button class="button1"> <a href="/search-servlet?task=search-employee_id" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
            <button class="button1"><a href="Update.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>


        </div>

</form>
</fieldset>
</body>

</html>
