package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		UserDao dao=new UserDao();
		User user=dao.login(email, password);
		 if(user!=null) {
		        HttpSession session = request.getSession();

		        session.setAttribute("name", user.getFullName());
		        session.setAttribute("email", email);
		        session.setAttribute("password", password);
		        
		        response.sendRedirect("views/candidate/dashboard.jsp");

		    }else {
		    	request.setAttribute("error","User Not Found");
				request.getRequestDispatcher("/views/authentication/login.jsp").forward(request, response);
		    	
		    }
		}
	}


