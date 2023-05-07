package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import entity.Account;
//import entity.Flight;

@WebServlet(name = "CheckoutControl", urlPatterns = {"/checkout"})
public class CheckoutControl extends HttpServlet {

	private static final long serialVersionUID = 1L;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        Account ac = (Account) session.getAttribute("acc");
        int uID = ac.getId();
        
        DAO dao = new DAO();
        int bID = dao.TopIDBooking();
        
        //fID
        String fID_str = request.getParameter("name2");
        int fID = Integer.parseInt(fID_str);
        //quanlity
        String quanlity_str = request.getParameter("name3");
        int quanlity = Integer.parseInt(quanlity_str);
        //total
        String total_str = request.getParameter("name4");
        int total = Integer.parseInt(total_str);
        
        String BookingDate = dao.getPresentTime();
        
        dao.addBooking(bID, uID, fID, quanlity, total, BookingDate);
        dao.addAcF(uID, fID, quanlity, total);
        dao.updateAfterBooking(fID, quanlity);
        
        
//        Flight f = dao.getFlightByID(fID_str);
//        int fNum = f.getNumT();
//        f.setNumT(fNum - quanlity);
        
        response.sendRedirect("home");
        
        
        
//        request.setAttribute("a", bID);
//        request.setAttribute("b", 1);
//        request.setAttribute("c", fID);
//        request.setAttribute("d", quanlity);
//        request.setAttribute("e", total);
//        request.getRequestDispatcher("TEST.jsp").forward(request, response);
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
