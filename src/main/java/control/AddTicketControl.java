
package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;


@WebServlet(name = "AddTicketControl", urlPatterns = {"/addticket"})
public class AddTicketControl extends HttpServlet {

	private static final long serialVersionUID = 1L;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String image = request.getParameter("image");
        String dep = request.getParameter("dep");
        String des = request.getParameter("des");
        String timedep = request.getParameter("timedep");
        String timedes = request.getParameter("timedes");
        String costt = request.getParameter("price");
        String num = request.getParameter("quanlity");
        int cost = Integer.parseInt(costt);
        int numT = Integer.parseInt(num);
        
        DAO dao = new DAO();
        int id = dao.TopIDFlight();
        
        dao.addTicket(id, dep, des, timedep, timedes, cost, numT, image);
        response.sendRedirect("manager");
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
