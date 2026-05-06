package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.QuestionDao;
import model.Question;

/**
 * Servlet implementation class QuestionServlet
 */
@WebServlet("/question")
public class QuestionServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  QuestionDao dao=new QuestionDao();
	        Question q = dao.getRandomQuestion();
	        req.setAttribute("q",q);
String category=req.getParameter("category");
List<Question> list=dao.getQuestionsByCategory(category);
	        RequestDispatcher rd= req.getRequestDispatcher("quiz.jsp");rd.forward(req,resp);
	}


}
