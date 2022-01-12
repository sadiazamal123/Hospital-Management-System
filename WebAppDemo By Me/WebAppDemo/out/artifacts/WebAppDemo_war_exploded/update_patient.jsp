<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Patient Information</title>
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
            <h3 style="text-align: center; color: blue">Patient INFORMATION UPDATE</h3>
            <form method="post" id="create-form">
                <form>
                    <div>
                        <label for="Patient_id"><b>Patient ID: </b></label>
                        <input type="number" id="Patient_id" name="Patient_id"><br><br>


                        <label for="pi_Password"><b> Updated Patient Password  </b> </label><br><br>
                        <input type="pi_Password" id="pi_Password" name="pi_Password" />
                        <button type="submit" formaction="/update_patient-servlet?column=pi_Password" formmethod="post"> <b> Update Password</b></button><br><br>

                        <label for="Mobileno"><b> Updated Patient Mobile NUmber </b></label><br><br>
                        <input type="number" id="Mobileno" name="Mobileno">
                        <button type="submit" formaction=" /update_patient-servlet?column=Mobileno" formmethod="post"><b>Update Mobile NUmber </b></button><br><br>

                        <label for="Age"><b> Updated Patient Age </b> </label> <br><br>
                        <input type="text" id="Age" name="Age">
                        <button type="submit" formaction=" /update_patient-servlet?column=Age" formmethod="post"><b>Update Age</b></button><br><br>


                    </div>
                </form>
                <br><br>
                <button class="button1"><a href="create_patient.jsp" style="text-decoration: none; color: white">Create Patient</a></button>
            </form>
            <br><br><br>
            <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
            <button class="button1"><a href="modify_patient.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
            <button class="button1"><a href="/search_patient-servlet?task=PatientSummary" style="text-decoration: none; color: white">Information Summary</a></button><br><br>
            <button class="button1"> <a href="/search_patient-servlet?task=PatientIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
            <button class="button1"><a href="update_patient.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>
        </div>
        </div>

    </form>
</fieldset>
</body>
</html>
