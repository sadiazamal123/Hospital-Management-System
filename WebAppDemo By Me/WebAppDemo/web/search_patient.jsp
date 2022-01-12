<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Patient Information</title>
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


        <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
        <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>
        <h3 style="text-align: center; color: blue">SEARCH EXISTING Patient</h3><br><br>
        <form method="post"  id="create-form">

                        <label for="all-patients"><b>Select an Patient ID </b></label>
                        <select name="Patient_id" id="all-patients"><br><br>
                            <%
                                ArrayList<Integer> PatientIdList = (ArrayList<Integer>) session.getAttribute("PatientIdList");
                                for(int Patient_id : PatientIdList)
                                {
                                    out.print(String.format("<option value=\"" + Patient_id + "\">" + Patient_id + "</option>"));
                                }
                            %>
                        </select>
                        <br><br> <br>
               <button class="button1" type="submit"  formaction="/search_patient-servlet?task=search_patient-by-id" formmethod="post" value="Search Patient" style="text-decoration: none; color: white">Search Patient</button>


                </div>

            <br><br><br>
            <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
            <button class="button1"><a href="create_patient.jsp" style="text-decoration: none; color: white">Create Patient</a></button>
            <button class="button1"> <a href="search_employee-servlet?task=PatientSummary" style="text-decoration: none; color: white"> Information Summary</a> &emsp;</button><br><br>
            <button class="button1"><a href="update_patient.jsp" style="text-decoration: none; color: white">Update Information</a></button>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
            <button class="button1"><a href="modify_patient.jsp" style="text-decoration: none; color: white">Modify Information</a></button><br><br>
            <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>


    </form>
</fieldset>

<% session.removeAttribute("PatientIdList"); %>
</body>
</html>