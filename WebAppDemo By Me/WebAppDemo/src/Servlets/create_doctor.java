package Servlets;

        import Controllers.Controller;
        import Models.Doctor;


        import javax.servlet.RequestDispatcher;
        import javax.servlet.ServletException;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import javax.servlet.http.HttpSession;
        import java.io.IOException;
        import java.sql.SQLException;

public class create_doctor  extends HttpServlet {
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
        int Employee_id= Integer.parseInt(request.getParameter("d1-employee_id"));
        String UserName = request.getParameter("d1-username");
        int Password = Integer.parseInt(request.getParameter("d1-password"));
        int Salary = Integer.parseInt(request.getParameter("d1-salary"));
        String Address = request.getParameter("d1-address");
        String Dob = request.getParameter("d1-dob");
        String Gender = request.getParameter("d1-gender");


        Doctor doctor = new Doctor (Employee_id, UserName, Password, Salary, Address, Dob, Gender );



        try {
            controller.addDoctor(doctor);
            controller.closeDatabase();
            HttpSession session = request.getSession();
            session.setAttribute("doctor", doctor);
            RequestDispatcher dispatcher = request.getRequestDispatcher("View_doctor.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}

