package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Account;


@WebServlet(name = "InfoControl", urlPatterns = {"/info"})
public class InfoControl extends HttpServlet {

	private static final long serialVersionUID = 1L;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Account ac = (Account) session.getAttribute("acc");
        int id = ac.getId();
        String email = ac.getEmail();
        String name = ac.getName();
        int age = ac.getAge();
        String cccd = ac.getCCCD();
        String pass = ac.getPass();
        int isUser = ac.getIsUser();
        //int isAdmin = ac.getIsAdmin();
        
        
        if (isUser == 1) request.setAttribute("uoa", "USER");
        else request.setAttribute("uoa", "ADMIN");
        
        request.setAttribute("id", id);
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("cccd", cccd);
        request.setAttribute("age", age);
        request.setAttribute("pass", pass);
        
        
        request.getRequestDispatcher("myinfo.jsp").forward(request, response);
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
