package sit.int202.simple.simpurutue;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalcGradeServlet", value = "/grade")
public class CalcGradeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int score = Integer.valueOf(request.getParameter("score"));
        CalcGrade cg = new CalcGrade(score);
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1> Calculate grade servlet </h1>");
        out.println("</br>");
        out.println("<h3> Your score is " + score + "</h3>" );
        out.println("<h3> Your grade is " + cg.getGrade() + "</h3>" );
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
