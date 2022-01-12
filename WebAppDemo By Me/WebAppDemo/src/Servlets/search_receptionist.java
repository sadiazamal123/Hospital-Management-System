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
        import java.util.ArrayList;

public class search_receptionist extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        try {
            Controller controller = new Controller();
            HttpSession session = request.getSession();
            String task = request.getParameter("task");
            System.out.println("task = " + task);
            if(task.equals("search_receptionist-group-by-id"))
            {
                String Receptionist_id = request.getParameter("Receptionist_id");
                Receptionist receptionist = controller.getExistingReceptionistById (Receptionist_id);
                session.setAttribute("receptionist", receptionist);
                RequestDispatcher dispatcher = request.getRequestDispatcher("View_receptionist.jsp");
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
            if(task.equals("ReceptionistIdList"))
            {
                ArrayList<Integer> ReceptionistIdList = controller.getExistingReceptionistIdList();
                session.setAttribute("ReceptionistIdList", ReceptionistIdList);
                RequestDispatcher dispatcher = request.getRequestDispatcher("search_receptionist.jsp");
                dispatcher.forward(request, response);
            }
            else if(task.equals("ReceptionistSummary"))
            {
                ArrayList<Receptionist> ReceptionistSummary = controller.getExistingReceptionistSummary();
                session.setAttribute("ReceptionistSummary", ReceptionistSummary);
                RequestDispatcher dispatcher = request.getRequestDispatcher("summary_receptionist.jsp");
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