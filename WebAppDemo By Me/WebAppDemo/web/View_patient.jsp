<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Models.Patient" %>
<html>
<head>
    <title>View Patient Information</title>
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
<h3 style="text-align: center; color: blue">PATIENT DETAILS</h3>


<%
    Patient patient = (Patient)session.getAttribute("patient");
    out.print(String.format("<b> PATIENT ID: </b>" + patient.getPatient_id() + "<br><br>" +
            "<b> Name: </b>" + patient.getName() + "<br><br>" +
            "<b> Password: </b>" + patient.getpi_Password() + "<br><br>" +
            "<b> MOBILE NUMBER: </b>" + patient.getMobileno() + "<br><br>" +
            "<b> AGE:</b>" + patient.getAge () + "<br><br>" +
            "<b> Date of Birth:</b>" + patient.getDate_Of_Birth() + "<br><br>" +
            "<b> Gender: </b>" + patient.getGender() + "<br><br><br>"));

%>

<br><br><br>
<button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
<button class="button1"> <a href="create_patient.jsp" style="text-decoration: none; color: white">Create New Patient</a> &emsp; </button>
<button class="button1"> <a href="/search_patient-servlet?task=PatientIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button><br><br>
<button class="button1"><a href="update_patient.jsp" style="text-decoration: none; color: white">Update Information</a></button>
<button class="button1"><a href="modify_patient.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
<button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button><br><br>
<button class="button1"><a href="summary_patient.jsp" style="text-decoration: none; color: white">Information Summery</a></button>
<button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
<% session.removeAttribute("patient"); %>

</body>
</html>
