package Controllers;
import Models.Employee;
import Models.Patient;
import Models.Receptionist;
import Models.Doctor;
import Models.Nurse;

import java.sql.*;
import java.util.ArrayList;
public class Controller {

    String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    String username = "C##USER200";
    String password = "1234";


    boolean connected;
    Connection connection;

    public Controller() throws ClassNotFoundException, SQLException {
        Class.forName("oracle.jdbc.OracleDriver");
        connection = DriverManager.getConnection(url, username, password);
        if (connection != null) {
            connected = true;
            connection.setAutoCommit(true);
        } else {
            connected = false;
        }
    }

    public void closeDatabase() throws SQLException {
        connection.close();
    }

    public boolean isConnected() {
        return connected;
    }
    /******************************************************     START EMPLOYEE   **********************************************/

    public void addEmployee(Employee employee) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(" INSERT INTO EMPLOYEES(EMPLOYEE_ID, USERNAME,PASSWORD,SALARY,ADDRESS,  DOB, GENDER) VALUES (" + employee.getEmployee_id() + ",'" + employee.getUserName() + "'," + employee.getPassword() + "," + employee.getSalary() + ",'" + employee.getAddress() + "'," + " '" + employee.getDob() + "'," + " '" + employee.getGender() + "'" + ")");
        statement.executeUpdate();
    }

    public ArrayList<Integer> getExistingEmployeeIdList() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT EMPLOYEE_ID FROM EMPLOYEES");
        ResultSet resultSet = statement.executeQuery();
        ArrayList<Integer> EmployeeIdList = new ArrayList<>();
        while (resultSet.next()) {
            EmployeeIdList.add(resultSet.getInt(1));
        }
        resultSet.close();
        return EmployeeIdList;
    }

    public Employee getExistingEmployeeById(String Employee_id) throws SQLException {

        PreparedStatement statement = connection.prepareStatement("SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID = " + Employee_id);

        ResultSet employeeResultSet = statement.executeQuery();
        employeeResultSet.next();
        Employee employee = new Employee(employeeResultSet.getInt("EMPLOYEE_ID"), employeeResultSet.getString("USERNAME"), employeeResultSet.getInt("PASSWORD"), employeeResultSet.getInt("SALARY"), employeeResultSet.getString("ADDRESS"), employeeResultSet.getString("DOB"), employeeResultSet.getString("GENDER"));
        return employee;

    }

    public ArrayList<Employee> getExistingEmployeeSummary() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT E1.EMPLOYEE_ID, E1.USERNAME,E1.PASSWORD,E1.SALARY, E1.ADDRESS, E1.DOB, E1.GENDER " +
                "FROM EMPLOYEES E1 JOIN EMPLOYEES E2 " +
                "ON (E1.EMPLOYEE_ID=E2.EMPLOYEE_ID)");

        ResultSet resultSet = statement.executeQuery();
        ArrayList<Employee> EmployeeSummary = new ArrayList<>();
        while (resultSet.next()) {

            EmployeeSummary.add(new Employee(resultSet.getInt("EMPLOYEE_ID"), resultSet.getString("USERNAME"), resultSet.getInt("PASSWORD"), resultSet.getInt("SALARY"), resultSet.getString("ADDRESS"), resultSet.getString("DOB"), resultSet.getString("GENDER")));
        }
        resultSet.close();
        return EmployeeSummary;
    }

    public void updateEmployeePassword(String Employee_id, String Password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE EMPLOYEES SET PASSWORD='" + Password + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }


    public void updateEmployeeAddress(String Employee_id, String Address) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE EMPLOYEES SET ADDRESS='" + Address + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }

    public void updateEmployeeSalary(String Employee_id, String Salary) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE EMPLOYEES SET SALARY ='" + Salary + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }
    /* MODIFY EMPLOYEE*/

    public void modifyEmployeePassword(String Employee_id, String Password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE EMPLOYEES SET PASSWORD='" + Password + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }


    public void modifyEmployeeAddress(String Employee_id, String Address) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE EMPLOYEES SET ADDRESS='" + Address + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }

    public void modifyEmployeeSalary(String Employee_id, String Salary) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE EMPLOYEES SET SALARY ='" + Salary + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }
    /******************************************************     END EMPLOYEE   **********************************************/


    /******************************************************     START PATIENT   **********************************************/

    public void addPatient(Patient patient) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(" INSERT INTO PATIENTS( PATIENT_ID, NAME, PI_PASSWORD, MOBILENO, AGE,  DATE_OF_BIRTH, GENDER) VALUES (" + patient.getPatient_id() + ",'" + patient.getName() + "'," + patient.getpi_Password() + "," + patient.getMobileno() + "," + patient.getAge() + "," + " '" + patient.getDate_Of_Birth() + "'," + " '" + patient.getGender() + "'" + ")");
        statement.executeUpdate();
    }

    public ArrayList<Integer> getExistingPatientIdList() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT PATIENT_ID FROM PATIENTS");
        ResultSet resultSet = statement.executeQuery();
        ArrayList<Integer> PatientIdList = new ArrayList<>();
        while (resultSet.next()) {
            PatientIdList.add(resultSet.getInt(1));
        }
        resultSet.close();
        return PatientIdList;
    }

    public Patient getExistingPatientById(String Patient_id) throws SQLException {

        PreparedStatement statement = connection.prepareStatement("SELECT * FROM PATIENTS WHERE PATIENT_ID = " + Patient_id);

        ResultSet patientResultSet = statement.executeQuery();
        patientResultSet.next();
        Patient patient = new Patient(patientResultSet.getInt("PATIENT_ID"), patientResultSet.getString("NAME"), patientResultSet.getInt("PI-PASSWORD"), patientResultSet.getInt("AGE"), patientResultSet.getInt("MOBILENO"), patientResultSet.getString("DATE_OF_BIRTH"), patientResultSet.getString("GENDER"));
        return patient;

    }
    public ArrayList<Patient> getExistingPatientSummary() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT P1.PATIENT_ID, P1.NAME,P1.PI_PASSWORD,P1.MOBILENO, P1.AGE, P1.DATE_OF_BIRTH, P1.GENDER " +
                "FROM PATIENTS P1 JOIN PATIENTS P2 " +
                "ON (P1.PATIENT_ID=P2.PATIENT_ID)");

        ResultSet resultSet = statement.executeQuery();
        ArrayList<Patient> PatientSummary = new ArrayList<>();
        while (resultSet.next()) {

            PatientSummary.add(new Patient(resultSet.getInt("PATIENT_ID"), resultSet.getString("NAME"), resultSet.getInt("PI_PASSWORD"), resultSet.getInt("MOBILENO"), resultSet.getInt("AGE"), resultSet.getString("DATE_OF_BIRTH"), resultSet.getString("GENDER")));
        }
        resultSet.close();
        return PatientSummary;
    }

    public void updatePatientPassword(String Patient_id, String pi_Password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE PATIENTS SET PI_PASSWORD ='" + pi_Password + "' WHERE EMPLOYEE_ID=" + Patient_id);
        statement.executeUpdate();
    }


    public void updatePatientMobileno(String Patient_id, String Mobileno) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE PATIENTS SET MOBILENO ='" + Mobileno + "' WHERE EMPLOYEE_ID=" + Patient_id);
        statement.executeUpdate();
    }

    public void updatePatientAge(String Patient_id, String Age) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE PATIENTS SET AGE ='" + Age + "' WHERE EMPLOYEE_ID=" + Patient_id);
        statement.executeUpdate();
    }

    public void modifyPatientPassword(String Patient_id, String pi_Password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE PATIENTS SET PI_PASSWORD ='" + pi_Password + "' WHERE EMPLOYEE_ID=" + Patient_id);
        statement.executeUpdate();
    }


    public void modifyPatientMobileno(String Patient_id, String Mobileno) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE PATIENTS SET MOBILENO ='" + Mobileno + "' WHERE EMPLOYEE_ID=" + Patient_id);
        statement.executeUpdate();
    }

    public void modifyPatientAge(String Patient_id, String Age) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE PATIENTS SET AGE ='" + Age + "' WHERE EMPLOYEE_ID=" + Patient_id);
        statement.executeUpdate();
    }

    /******************************************************     END PATIENT   **********************************************/


    /******************************************************     START DOCTOR   **********************************************/

    public void addDoctor(Doctor doctor) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(" INSERT INTO DOCTORS(EMPLOYEE_ID, USERNAME,PASSWORD,SALARY,ADDRESS,  DOB, GENDER) VALUES (" + doctor.getEmployee_id() + ",'" + doctor.getUserName() + "'," + doctor.getPassword() + "," + doctor.getSalary() + ",'" + doctor.getAddress() + "'," + " '" + doctor.getDob() + "'," + " '" + doctor.getGender() + "'" + ")");
        statement.executeUpdate();
    }


    public ArrayList<Integer> getExistingDoctorIdList() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT EMPLOYEE_ID FROM DOCTORS");
        ResultSet resultSet = statement.executeQuery();
        ArrayList<Integer> DoctorIdList = new ArrayList<>();
        while (resultSet.next())
        {
            DoctorIdList.add(resultSet.getInt(1));
        }
        resultSet.close();
        return DoctorIdList;
    }
    public Doctor getExistingDoctorById(String Employee_id) throws SQLException {

        PreparedStatement statement = connection.prepareStatement("SELECT * FROM DOCTORS WHERE EMPLOYEE_ID  =" + Employee_id);

        ResultSet doctorResultSet = statement.executeQuery();
        doctorResultSet.next();

        Doctor doctor = new Doctor (doctorResultSet.getInt("EMPLOYEE_ID"), doctorResultSet.getString("USERNAME"), doctorResultSet.getInt("PASSWORD"), doctorResultSet.getInt("SALARY"), doctorResultSet.getString("ADDRESS"), doctorResultSet.getString("DOB"), doctorResultSet.getString("GENDER"));
        return doctor;

    }
    public ArrayList<Doctor> getExistingDoctorSummary() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT D1.EMPLOYEE_ID, D1.USERNAME,D1.PASSWORD,D1.SALARY, D1.ADDRESS, D1.DOB, D1.GENDER " +
                "FROM DOCTORS D1 JOIN DOCTORS D2 " +
                "ON (D1.EMPLOYEE_ID=D2.EMPLOYEE_ID)");

        ResultSet resultSet = statement.executeQuery();
        ArrayList<Doctor> DoctorSummary = new ArrayList<>();
        while (resultSet.next())
        {

            DoctorSummary.add(new Doctor(resultSet.getInt("EMPLOYEE_ID"), resultSet.getString("USERNAME"), resultSet.getInt("PASSWORD"), resultSet.getInt("SALARY"), resultSet.getString("ADDRESS"), resultSet.getString("DOB"), resultSet.getString("GENDER")));
        }
        resultSet.close();
        return DoctorSummary;
    }
    public void updateDoctorPassword(String Employee_id, String Password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE DOCTORS SET PASSWORD='" + Password + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }


    public void updateDoctorAddress(String Employee_id, String Address) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE DOCTORS SET ADDRESS='" + Address + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }

    public void updateDoctorSalary(String Employee_id, String Salary) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE DOCTORS SET SALARY ='" + Salary + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }
    public void modifyDoctorPassword(String Employee_id, String Password) throws SQLException {
        try (PreparedStatement statement = connection.prepareStatement("UPDATE DOCTORS SET PASSWORD='" + Password + "' WHERE EMPLOYEE_ID=" + Employee_id)) {
            statement.executeUpdate();
        }
    }


    public void modifyDoctorAddress(String Employee_id, String Address) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE DOCTORS SET ADDRESS='" + Address + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }

    public void modifyDoctorSalary(String Employee_id, String Salary) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE DOCTORS SET SALARY ='" + Salary + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }
    /******************************************************     END DOCTOR   **********************************************/

    /******************************************************     START NURSE   **********************************************/
       public  void addNurse(Nurse nurse) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(" INSERT INTO NURSES(EMPLOYEE_ID, USERNAME,PASSWORD,SALARY,ADDRESS,  DOB, GENDER) VALUES (" + nurse.getEmployee_id() + ",'" + nurse.getUserName() + "'," + nurse.getPassword() + "," + nurse.getSalary() + ",'" + nurse.getAddress() + "'," + "'" + nurse.getDob() + "'," + "'" + nurse.getGender() + "'" + ")");
        statement.executeUpdate();
    }


    public ArrayList<Integer> getExistingNurseIdList() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT EMPLOYEE_ID FROM NURSES");
        ResultSet resultSet = statement.executeQuery();
        ArrayList<Integer> NurseIdList = new ArrayList<>();
        while (resultSet.next())
        {
            NurseIdList.add(resultSet.getInt(1));
        }
        resultSet.close();
        return NurseIdList;
    }
    public Nurse getExistingNurseById (String Employee_id) throws SQLException {

        PreparedStatement statement = connection.prepareStatement("SELECT * FROM NURSES WHERE EMPLOYEE_ID = " + Employee_id);

        ResultSet nurseResultSet = statement.executeQuery();

        Nurse  nurse = new Nurse (nurseResultSet.getInt("EMPLOYEE_ID"), nurseResultSet.getString("USERNAME"), nurseResultSet.getInt("PASSWORD"), nurseResultSet.getInt("SALARY"), nurseResultSet.getString("ADDRESS"), nurseResultSet.getString("DOB"), nurseResultSet.getString("GENDER"));
        return nurse;

    }

    public ArrayList<Nurse> getExistingNurseSummary() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT N1.EMPLOYEE_ID, N1.USERNAME,N1.PASSWORD,N1.SALARY, N1.ADDRESS, N1.DOB, N1.GENDER " +
                "FROM NURSES N1 JOIN NURSES N2 " +
                "ON (N1.EMPLOYEE_ID=N2.EMPLOYEE_ID)");

        ResultSet resultSet = statement.executeQuery();
        ArrayList<Nurse> NurseSummary = new ArrayList<>();
        while (resultSet.next())
        {

            NurseSummary.add(new Nurse(resultSet.getInt("EMPLOYEE_ID"), resultSet.getString("USERNAME"), resultSet.getInt("PASSWORD"), resultSet.getInt("SALARY"), resultSet.getString("ADDRESS"), resultSet.getString("DOB"), resultSet.getString("GENDER")));
        }
        resultSet.close();
        return NurseSummary;
    }
    public void updateNursePassword(String Employee_id, String Password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE NURSES SET PASSWORD='" + Password + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }

    public void updateNurseAddress(String Employee_id, String Address) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE NURSES SET ADDRESS='" + Address + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }
    public void updateNurseSalary(String Employee_id, String Salary) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE NURSES SET SALARY ='" + Salary + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }

    public void modifyNursePassword(String Employee_id, String Password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE NURSES SET PASSWORD='" + Password + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }

    public void modifyNurseAddress(String Employee_id, String Address) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE NURSES SET ADDRESS='" + Address + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }
    public void modifyNurseSalary(String Employee_id, String Salary) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE NURSES SET SALARY ='" + Salary + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }
    /******************************************************     END NURSE   **********************************************/

    /******************************************************     START RECEPTIONIST   **********************************************/

    public void addReceptionist(Receptionist receptionist) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(" INSERT INTO RECEPTIONISTS(EMPLOYEE_ID, USERNAME,PASSWORD,SALARY,ADDRESS,  DOB, GENDER) VALUES (" + receptionist.getEmployee_id() + ",'" + receptionist.getUserName() + "'," + receptionist.getPassword() + "," + receptionist.getSalary() + ",'" + receptionist.getAddress() + "'," + " '" + receptionist.getDob() + "'," + " '" + receptionist.getGender() + "'" + ")");
        statement.executeUpdate();
    }

    public ArrayList<Integer> getExistingReceptionistIdList() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT EMPLOYEE_ID FROM RECEPTIONISTS");
        ResultSet resultSet = statement.executeQuery();
        ArrayList<Integer> ReceptionistIdList = new ArrayList<>();
        while (resultSet.next()) {
            ReceptionistIdList.add(resultSet.getInt(1));
        }
        resultSet.close();
        return ReceptionistIdList;
    }

    public Receptionist getExistingReceptionistById(String Employee_id) throws SQLException {

        PreparedStatement statement = connection.prepareStatement("SELECT * FROM RECEPTIONISTS WHERE EMPLOYEE_ID = " + Employee_id);

        ResultSet receptionistResultSet = statement.executeQuery();
        receptionistResultSet.next();
        Receptionist receptionist = new Receptionist(receptionistResultSet.getInt("EMPLOYEE_ID"), receptionistResultSet.getString("USERNAME"), receptionistResultSet.getInt("PASSWORD"), receptionistResultSet.getInt("SALARY"), receptionistResultSet.getString("ADDRESS"), receptionistResultSet.getString("DOB"), receptionistResultSet.getString("GENDER"));
        return receptionist;

    }

    public ArrayList<Receptionist> getExistingReceptionistSummary() throws SQLException {
        PreparedStatement statement = connection.prepareStatement("SELECT R1.EMPLOYEE_ID, R1.USERNAME,R1.PASSWORD,R1.SALARY, R1.ADDRESS, R1.DOB, R1.GENDER " +
                "FROM RECEPTIONISTS R1 JOIN RECEPTIONISTS R2 " +
                "ON (R1.EMPLOYEE_ID=R2.EMPLOYEE_ID)");

        ResultSet resultSet = statement.executeQuery();
        ArrayList<Receptionist> ReceptionistSummary = new ArrayList<>();
        while (resultSet.next())
        {
            ReceptionistSummary.add(new Receptionist(resultSet.getInt("EMPLOYEE_ID"), resultSet.getString("USERNAME"), resultSet.getInt("PASSWORD"), resultSet.getInt("SALARY"), resultSet.getString("ADDRESS"), resultSet.getString("DOB"), resultSet.getString("GENDER")));
        }
        resultSet.close();
        return ReceptionistSummary;
    }

    public void updateReceptionistPassword(String Employee_id, String Password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE RECEPTIONISTS SET PASSWORD='" + Password + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }


    public void updateReceptionistAddress(String Employee_id, String Address) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE RECEPTIONISTS SET ADDRESS='" + Address + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }

    public void updateReceptionistSalary(String Employee_id, String Salary) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE RECEPTIONISTS SET SALARY ='" + Salary + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }
    /* MODIFY EMPLOYEE*/

    public void modifyReceptionistPassword(String Employee_id, String Password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE RECEPTIONISTS SET PASSWORD='" + Password + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }


    public void modifyReceptionistAddress(String Employee_id, String Address) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE RECEPTIONISTS SET ADDRESS='" + Address + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }

    public void modifyReceptionistSalary(String Employee_id, String Salary) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE RECEPTIONISTS SET SALARY ='" + Salary + "' WHERE EMPLOYEE_ID=" + Employee_id);
        statement.executeUpdate();
    }
    /******************************************************     END RECEPTIONIST   **********************************************/
}