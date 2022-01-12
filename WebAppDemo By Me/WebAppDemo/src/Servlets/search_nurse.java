package Servlets;
import Controllers.Controller;
import Models.Nurse;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;


public class search_nurse extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        try {
            Controller controller = new Controller();
            HttpSession session = request.getSession();
            String task = request.getParameter("task");
            System.out.println("task = " + task);
            if(task.equals("search_employee-group-by-id"))
            {
                String Employee_id = request.getParameter("Employee_id");
                Nurse nurse = controller.getExistingNurseById (Employee_id);
                session.setAttribute("nurse", nurse);
                RequestDispatcher dispatcher = request.getRequestDispatcher("View_nurse.jsp");
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
        try {
            Controller controller = new Controller();
            HttpSession session = request.getSession();
            String task = request.getParameter("task");
            System.out.println(" task = " + task);
            if(task.equals("EmployeeIdList"))
            {
                ArrayList<Integer> DoctorIdList = controller.getExistingNurseIdList();
                session.setAttribute("DoctorIdList", DoctorIdList);
                RequestDispatcher dispatcher = request.getRequestDispatcher("search_nurse.jsp");
                dispatcher.forward(request, response);
            }
            else if(task.equals("NurseSummary"))
            {
                ArrayList<Nurse> NurseSummary = controller.getExistingNurseSummary();
                session.setAttribute("NurseSummary", NurseSummary);
                RequestDispatcher dispatcher = request.getRequestDispatcher("summary_nurse.jsp");
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





}
