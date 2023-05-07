
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

@WebServlet(name = "ChangePassControl", urlPatterns = {"/changepass"})
public class ChangePassControl extends HttpServlet {

	private static final long serialVersionUID = 1L;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        Account ac = (Account) session.getAttribute("acc");
        int id = ac.getId();
        
        String oldpass = request.getParameter("oldpass");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        
        if (pass == "" || repass == "") {
        	request.setAttribute("message", "Please Fill Full Field");
        	request.setAttribute("pass", pass);
        	request.setAttribute("oldpass", oldpass);
        	request.setAttribute("repass", repass);
        	request.getRequestDispatcher("Changepass.jsp").forward(request, response);
        }
        else {
        	if (!pass.equals(repass)) {
        		request.setAttribute("message", "New Pass Dif Repass");
        		request.setAttribute("oldpass", oldpass);
            	request.setAttribute("pass", pass);
            	request.setAttribute("repass", repass);
            	request.getRequestDispatcher("Changepass.jsp").forward(request, response);
        	}
        	else {
        		DAO dao = new DAO();
        		dao.updateChangePass(id, pass);
        		ac.setPass(pass);
        		response.sendRedirect("info");
        	}
        }
        
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
