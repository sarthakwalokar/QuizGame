package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.QuestionDao;
import model.Question;

@WebServlet("/category")
public class CategoryServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	        throws ServletException, IOException {

	    String category = req.getParameter("category");

	    QuestionDao dao = new QuestionDao();
	    List<Question> list = dao.getQuestionsByCategory(category);
	   

	    if (list == null || list.isEmpty()) {
	        resp.getWriter().println("No questions found"+category);
	        
	        return;
	    }

	    HttpSession session = req.getSession();

	    session.setAttribute("questions", list);
	    session.setAttribute("index", 0);

	    resp.sendRedirect("cateQuestion.jsp");
	}
	}