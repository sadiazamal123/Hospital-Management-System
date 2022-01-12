<%@ page import="Models.Nurse" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/22/2021
  Time: 1:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Existing Nurse Summary</title>
    <style>

        body {
            margin-top: 30px;
            margin-left: 400px;
            margin-right: 420px;
            font-family: roboto, 'Noto Sans Myanmar UI', arial, sans-serif;
        }

        table, th, td {
            background-color: lightcoral;

            text-align: center;
            border: 1px solid black;
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

<div>
    <img src="images/hospital_logo.png" alt="hospital_logo" style="text-align: left; height: 80px; width:120px">
    <b style="color:#253071; text-align:right; font-size:xx-large"> EAST WEST HOSPITAL </b><br><br>
    <h3 style="text-align: center; color: blue">Existing Nurse Summary</h3>
    <form method="post" id="create-form">
        <table>
            <tr>
                <th>NURSE ID</th>
                <th>USERNAME</th>
                <th>PASSWORD</th>
                <th>SALARY</th>
                <th>ADDRESS</th>
                <th>DATE OF BIRTH</th>
                <th>GENDER</th>

            </tr>
            <%

                ArrayList<Nurse> NurseSummary = (ArrayList<Nurse>) session.getAttribute("NurseSummary");
                for(Nurse nurse: NurseSummary)
                {
                    out.print(String.format("<tr>" +
                            "<td>" + nurse.getEmployee_id() + "</td>" +
                            "<td>" + nurse.getUserName() + "</td>" +
                            "<td>" + nurse.getPassword() + "</td>" +
                            "<td>" + nurse.getSalary() + "</td>" +
                            "<td>" + nurse.getAddress () + "</td>" +
                            "<td>" + nurse.getDob() + "</td>" +
                            "<td>" + nurse.getGender() + "</td>" +
                            "</tr>"));
                }


            %>
        </table>
        <br><br>
        <button class="button1"><a href="create_nurse.jsp" style="text-decoration: none; color: white">Create Nurse</a></button>

    </form>
    <br><br><br>
    <button class="button1"> <a href="index.jsp" style="text-decoration: none; color: white">Home Page</a> &emsp; </button>
    <button class="button1"><a href="modify_nurse.jsp" style="text-decoration: none; color: white">Modify Information</a></button>
    <button class="button1"><a href="/search_nurse-servlet?task=NurseSummary" style="text-decoration: none; color: white">Information Summary</a></button><br><br>
    <button class="button1"> <a href="/search_nurse-servlet?task=NurseIdList" style="text-decoration: none; color: white">Search Information</a> &emsp;</button>
    <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Delete Information</a></button>
    <button class="button1"><a href="update_nurse.jsp" style="text-decoration: none; color: white">Update Information</a></button><br><br>
    <button class="button1"><a href="delet_nurse.jsp" style="text-decoration: none; color: white">Delete Information</a></button><br><br>
    <button class="button1"><a href="index.jsp" style="text-decoration: none; color: white">Exit</a></button>

    <% session.removeAttribute("NurseSummary"); %>
</div>



</body>
</html>