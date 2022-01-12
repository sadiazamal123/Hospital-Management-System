package Servlets;
import Controllers.Controller;
import Models.Receptionist;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;


public class update_receptionist extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            Controller controller = new Controller();
            String column = request.getParameter("column");
            String Employee_id = request.getParameter("Employee_id");
            if(column.equals("Password"))
            {
                String Password = request.getParameter("Password");
                controller.updateReceptionistPassword(Employee_id, Password);

            }

            else if(column.equals("Address"))
            {     String  Address = request.getParameter("Address");
                controller.updateReceptionistAddress(Employee_id,  Address);

            }
            else if(column.equals("Salary"))
            {
                String  Salary = request.getParameter("Salary");
                controller.updateReceptionistSalary(Employee_id,  Salary);

            }


            Receptionist receptionist = controller.getExistingReceptionistById (Employee_id);
            HttpSession session = request.getSession();
            session.setAttribute("receptionist", receptionist );
            RequestDispatcher dispatcher = request.getRequestDispatcher("View_receptionist.jsp");
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