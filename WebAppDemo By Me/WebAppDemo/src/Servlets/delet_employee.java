/*package Servlets;
import Controllers.Controller;
import Models.Employee;

import java.lang.Integer;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class delet_employee extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        try {
            Controller controller = new Controller();
            HttpSession session = request.getSession();
            String task = request.getParameter("task");
            System.out.println("task = " + task);
            if(task.equals("delete-by-Employee_id"))
            {
                String Employee_id = request.getParameter("Employee_id");
                Employee employee = controller.deleteEmployee(Employee_id);
                session.setAttribute("employee", employee);
                RequestDispatcher dispatcher = request.getRequestDispatcher("View.jsp");
                dispatcher.forward(request, response);
            }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response){

    }


}
*/

