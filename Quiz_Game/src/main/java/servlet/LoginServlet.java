package servlet;
import model.User;
import javax.servlet.*;
import javax.servlet.http.*;

import Dao.UserDao;

import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		String name=request.getParameter("name");
        String email = request.getParameter("email");
           UserDao dao=new UserDao();
           User user=dao.getUserByEmail(email);
           
           if(user!=null) {
        HttpSession session = request.getSession();

        session.setAttribute("name", user.getName());
        session.setAttribute("email", email);
        session.setAttribute("score", 0);
        
        response.sendRedirect("index.jsp");

    }else {
    	
    	response.getWriter().println("User Not Found");
    }
}
    }