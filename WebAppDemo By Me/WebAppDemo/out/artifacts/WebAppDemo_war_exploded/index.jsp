<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- Form Head -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Hospital Management System</title>
    <!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
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
        }


    </style>
</head>

<!-- Form Body -->

<body>
<fieldset class="fieldset1">
    <br><br>
    <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
    <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b>
    <h2 style="color:blue" >Login to Your Account</h2><br>
    <form>
        <label for="username"><b>User name: </b></label> &nbsp;&nbsp; &nbsp; <input type="text" id="username" name="username" /><br><br>
        <label for="password"><b>Password:</b> </label> &nbsp;&nbsp; &nbsp;&nbsp; <input type="password"  id="password" name="password" /><br><br>
    </form>

    <br><br>
    <button class="button1"> <a href="function_employee.jsp" style="text-decoration: none; color: white"> Login as Employee </a></button>
    <button class="button1"> <a href="function_doctor.jsp" style="text-decoration: none; color: white"> Login as Doctor</a> </button>
    <button class="button1"> <a href="function_nurse.jsp" style="text-decoration: none; color: white"> Login as Nurse </a></button><br><br>
    <button class="button1"> <a href="function_receptionist.jsp" style="text-decoration: none; color: white"> Login as Receptionist</a> </button>
    <button class="button1"> <a href="function_patient.jsp" style="text-decoration: none; color: white"> Login as Patient </a></button>
    <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>

    <br><br>
</fieldset>
</form>

<!-- form finish -->

</body>

</html>
