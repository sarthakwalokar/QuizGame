package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import model.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		
		User user=new User();
		user.setFullName(name);
		user.setEmail(email);
		user.setPasswordHash(password);
		user.setRole(role);
		UserDao dao=new UserDao();
		if(dao.registerUser(user)) {
			response.sendRedirect("views/authentication/login.jsp");
		}
		else {
			request.setAttribute("error","Invalid Credential");
			request.getRequestDispatcher("/views/authentication/signup.jsp").forward(request, response);
			
			
		}
		
	}

}
