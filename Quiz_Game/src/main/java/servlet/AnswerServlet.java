package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class AnswerServlet
 */
@WebServlet("/answer")
public class AnswerServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  HttpSession session = request.getSession();

		int score = (int) session.getAttribute("score"); 
		String userAnswer=request.getParameter("answer");
		String correctAnswer=request.getParameter("correct");
		
		String result;
		if(userAnswer!=null&&userAnswer.equals(correctAnswer)) {
			result="Correct";
			score+=10;
		}else {
			result="Wrong";
			score-=5;
		}
		

        session.setAttribute("score",score);
		request.setAttribute("result", result);
		
		 RequestDispatcher rd=request.getRequestDispatcher("result.jsp");
		 rd.forward(request, response);
	}

}
