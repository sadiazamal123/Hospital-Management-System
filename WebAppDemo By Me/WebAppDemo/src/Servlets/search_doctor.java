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
import java.util.ArrayList;


public class search_doctor extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        try {
            Controller controller = new Controller();
            HttpSession session = request.getSession();
            String task = request.getParameter("task");
            System.out.println("***task = " + task);
            if(task.equals("search_doctor-group-by-id"))
            {
                String Employee_id = request.getParameter("Employee_id");
                Doctor doctor = controller.getExistingDoctorById (Employee_id);
                session.setAttribute("doctor", doctor);
                RequestDispatcher dispatcher = request.getRequestDispatcher("View_doctor.jsp");
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
            System.out.println("task = " + task);
            if(task.equals("DoctorIdList"))
            {
                ArrayList<Integer> DoctorIdList = controller.getExistingDoctorIdList();
                session.setAttribute("DoctorIdList", DoctorIdList);
                RequestDispatcher dispatcher = request.getRequestDispatcher("search_doctor.jsp");
                dispatcher.forward(request, response);
            }
            else if(task.equals("DoctorSummary"))
            {
                ArrayList<Doctor> DoctorSummary = controller.getExistingDoctorSummary();
                session.setAttribute("DoctorSummary", DoctorSummary);
                RequestDispatcher dispatcher = request.getRequestDispatcher("summary_doctor.jsp");
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