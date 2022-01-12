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
        import java.util.ArrayList;

public class search_patient extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        try {
            Controller controller = new Controller();
            HttpSession session = request.getSession();
            String task = request.getParameter("task");
            System.out.println("task =" + task);
            if(task.equals("search_patient-by-id"))
            {
                String Patient_id = request.getParameter("Patient_id");
                Patient patient = controller.getExistingPatientById ( Patient_id);
                session.setAttribute("patient", patient);
                RequestDispatcher dispatcher = request.getRequestDispatcher("View_patient.jsp");
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
            if(task.equals("PatientIdList"))
            {
                ArrayList<Integer> PatientIdList = controller.getExistingPatientIdList();
                session.setAttribute("PatientIdList", PatientIdList);
                RequestDispatcher dispatcher = request.getRequestDispatcher("search_patient.jsp");
                dispatcher.forward(request, response);
            }
           else if(task.equals("PatientSummary"))
            {
                ArrayList<Patient> PatientSummary = controller.getExistingPatientSummary();
                session.setAttribute("PatientSummary", PatientSummary);
                RequestDispatcher dispatcher = request.getRequestDispatcher("summary_patient.jsp");
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