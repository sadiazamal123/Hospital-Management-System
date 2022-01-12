<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Models.Doctor" %>
<html>
<head>
    <title>View Doctor Information</title>
    <style>
        body {
            margin-top: 100px;
            margin-left: 420px;
            margin-right: 420px;
            font-family: roboto, 'Noto Sans Myanmar UI', arial, sans-serif;
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
<body>

<img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
<b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>
<h3 style="text-align: center; color: blue"> DOCTOR DETAILS</h3>


<%
    Doctor doctor = (Doctor)session.getAttribute("doctor");
    out.print(String.format("<b> Employee ID: </b>" + doctor.getEmployee_id() + "<br><br>" +
            "<b> User name: </b>" + doctor.getUserName() + "<br><br>" +
            "<b> Password: </b>" + doctor.getPassword() + "<br><br>" +
            "<b> Salary: </b>" + doctor.getSalary() + "<br><br>" +
            "<b> Address:</b>" + doctor.getAddress () + "<br><br>" +
            "<b> Date of Birth:</b>" + doctor.getDob() + "<br><br>" +
            "<b> Gender: </b>" + doctor.getGender() + "<br><br><br>"));


%>

<br><br><br>
<button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
<button class="button1"><a href="modify_doctor.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
<button class="button1"> <a href="create_doctor.jsp" style="text-decoration: none; color: white">Create New Doctor</a> &emsp; </button><br><br>
<button class="button1"><a href="/search_doctor-servlet?task=DoctorSummary" style="text-decoration: none; color: white">Information Summary</a></button>
<button class="button1"> <a href="/search_doctor-servlet?task=search-DoctorIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
<button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button><br><br>
<button class="button1"><a href="update_doctor.jsp" style="text-decoration: none; color: white">Update Information</a></button>
<button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
<% session.removeAttribute("doctor"); %>

</body>
</html>
