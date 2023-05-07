
package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import entity.Account;


@WebServlet(name = "RegisterControl", urlPatterns = {"/register"})
public class RegisterControl extends HttpServlet {

	private static final long serialVersionUID = 1L;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        //get info
        int id = 1;
        String email = request.getParameter("email");
        String name = request.getParameter("Name");
        String cccd = request.getParameter("cccd");
        String ageS = request.getParameter("age");
        int age = 0;
        if (ageS == null || ageS.equals("")) {
        	age = 0;
        }
        else age = Integer.parseInt(ageS);
        
        String pass = request.getParameter("password");
        String repass = request.getParameter("repassword");
        DAO dao1 = new DAO();
        id = dao1.TopID();
        //
        
        if (email == "" || name == "" || pass == "" || repass == "" || cccd == "" || ageS == "" || ageS == null || age == 0) {
        	//not fill all
        	request.setAttribute("message", "Please Fill Full Fields ");
    		request.setAttribute("email", email);
        	request.setAttribute("name", name);
        	if (age == 0) request.setAttribute("age", "");
        	else request.setAttribute("age", age);
        	request.setAttribute("cccd", cccd);
    		request.setAttribute("pass", pass);
        	request.setAttribute("repass", repass);
        	
        	request.getRequestDispatcher("register_fail.jsp").forward(request, response);
        	
        	
        } else {
        	if (!pass.equals(repass)) {
        		//pass != repass
        		request.setAttribute("message", "Pass diff repass");
        		request.setAttribute("email", email);
            	request.setAttribute("name", name);
            	request.setAttribute("cccd", cccd);
            	request.setAttribute("age", age);
        		request.setAttribute("pass", pass);
            	request.setAttribute("repass", repass);
            	
            	request.getRequestDispatcher("register_fail.jsp").forward(request, response);
        		
            	
        	}
        	else {
        		DAO dao = new DAO();
        		Account ac = dao.checkAccountExit(email);
        		if (ac == null) {
        		
        			//dc register
        			dao.RegisterAC(id, email, name, pass, cccd, age);
        			
        			request.setAttribute("message", "Acount is created");
            		request.setAttribute("email", email);
                	request.setAttribute("name", name);
                	request.setAttribute("cccd", cccd);
                	request.setAttribute("age", age);
            		request.setAttribute("pass", pass);
                	request.setAttribute("repass", repass);
                	
                	request.getRequestDispatcher("register_fail.jsp").forward(request, response);
                	
        		} else {
        			//email tontai
        			request.setAttribute("message", "Email is existed");
            		request.setAttribute("email", email);
                	request.setAttribute("name", name);
                	request.setAttribute("cccd", cccd);
                	request.setAttribute("age", age);
            		request.setAttribute("pass", pass);
                	request.setAttribute("repass", repass);
                	
                	request.getRequestDispatcher("register_fail.jsp").forward(request, response);
                	
        		}
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
