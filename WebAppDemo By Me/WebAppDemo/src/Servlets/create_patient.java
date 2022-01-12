package Servlets;

        import Controllers.Controller;
        import Models.Patient;


        import javax.servlet.RequestDispatcher;
        import javax.servlet.ServletException;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import javax.servlet.http.HttpSession;
        import java.io.IOException;
        import java.sql.SQLException;

public class create_patient extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Controller controller = null;
        try {
            controller = new Controller();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        int Patient_id = Integer.parseInt(request.getParameter("p1-patient_id"));
        String Name = request.getParameter("p1-name");
        int pi_Password = Integer.parseInt(request.getParameter("p1-pi_password"));
        int Mobileno = Integer.parseInt(request.getParameter("p1-mobile_no"));
        int Age = Integer.parseInt(request.getParameter("p1-age"));
        String Date_Of_Birth = request.getParameter("p1-Date_Of_Birth");
        String Gender = request.getParameter("p1-gender");

        Patient patient = new Patient (Patient_id, Name, pi_Password, Mobileno, Age, Date_Of_Birth, Gender );

        try {
            controller.addPatient(patient);
            controller.closeDatabase();
            HttpSession session = request.getSession();
            session.setAttribute("patient", patient);
            RequestDispatcher dispatcher = request.getRequestDispatcher("View_patient.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}

