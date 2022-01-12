package Servlets;
import Controllers.Controller;
import Models.Employee;

        import javax.servlet.RequestDispatcher;
        import javax.servlet.ServletException;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import javax.servlet.http.HttpSession;
        import java.io.IOException;
        import java.sql.SQLException;
        import java.util.ArrayList;

public class search_employee extends HttpServlet {
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
                Employee employee = controller.getExistingEmployeeById (Employee_id);
                session.setAttribute("employee", employee);
                RequestDispatcher dispatcher = request.getRequestDispatcher("View_employee.jsp");
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
            System.out.println("task = " + task);
            if(task.equals("EmployeeIdList"))
            {
                ArrayList<Integer> EmployeeIdList = controller.getExistingEmployeeIdList();
                session.setAttribute("EmployeeIdList", EmployeeIdList);
                RequestDispatcher dispatcher = request.getRequestDispatcher("search_employee.jsp");
                dispatcher.forward(request, response);
            }
            else if(task.equals("EmployeeSummary"))
            {
                ArrayList<Employee> EmployeeSummary = controller.getExistingEmployeeSummary();
                session.setAttribute("EmployeeSummary", EmployeeSummary);
                RequestDispatcher dispatcher = request.getRequestDispatcher("summary_employee.jsp");
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