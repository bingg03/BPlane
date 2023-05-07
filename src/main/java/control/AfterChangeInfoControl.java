
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


@WebServlet(name = "AfterChangeInfoControl", urlPatterns = {"/afterchangeinfo"})
public class AfterChangeInfoControl extends HttpServlet {

	private static final long serialVersionUID = 1L;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String cccd = request.getParameter("cccd");
        int age;
        String ageS = request.getParameter("age");
        age = Integer.parseInt(ageS);
        
        DAO dao = new DAO();
        
        dao.updateChangeInfo(id, name, email, cccd, age);
        
        HttpSession session = request.getSession();
        Account ac = (Account) session.getAttribute("acc");
        ac.setName(name);
        ac.setEmail(email);
        ac.setCCCD(cccd);
        ac.setAge(age);
        
        response.sendRedirect("info");
        //request.getRequestDispatcher("info").forward(request, response);
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
