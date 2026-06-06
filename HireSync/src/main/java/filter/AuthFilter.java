package filter;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;

@WebFilter({
    "/candidate/*",
    "/recruiter/*",
    "/admin/*"
})
public class AuthFilter extends HttpFilter {

    @Override
    public void doFilter(ServletRequest request,
                         ServletResponse response,
                         FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req =
                (HttpServletRequest) request;

        HttpServletResponse res =
                (HttpServletResponse) response;

        HttpSession session =
                req.getSession(false);

        if(session == null ||
           session.getAttribute("loggedUser") == null) {

            res.sendRedirect(
                req.getContextPath() +
                "/login.jsp"
            );

            return;
        }

        chain.doFilter(request, response);
    }
}