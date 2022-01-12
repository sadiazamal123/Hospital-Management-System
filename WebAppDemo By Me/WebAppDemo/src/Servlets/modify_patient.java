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

public class modify_patient extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            Controller controller = new Controller();
            String column = request.getParameter("column");
            String Patient_id = request.getParameter("Patient_id");
            if(column.equals("pi_Password"))
            {
                String pi_Password = request.getParameter("pi_Password");
                controller.modifyPatientPassword(Patient_id, pi_Password);

            }
            else if(column.equals("Mobileno"))
            {
                String  Mobileno = request.getParameter("Mobileno");
                controller.modifyPatientMobileno(Patient_id,  Mobileno);

            }
            else if(column.equals("Age"))
            {     String  Age = request.getParameter("Age");
                controller.modifyPatientAge(Patient_id,  Age);

            }

            Patient patient = controller.getExistingPatientById (Patient_id);
            HttpSession session = request.getSession();
            session.setAttribute("patient", patient );
            RequestDispatcher dispatcher = request.getRequestDispatcher("View_patient.jsp");
            dispatcher.forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {

    }

}

