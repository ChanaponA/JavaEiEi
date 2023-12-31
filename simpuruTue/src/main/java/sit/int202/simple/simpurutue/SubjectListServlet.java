package sit.int202.simple.simpurutue;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sit.int202.simple.simpurutue.entities.Subject;
import sit.int202.simple.simpurutue.repositories.SubjectRepository;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "SubjectListServlet", value = "/subjects")
public class SubjectListServlet extends HttpServlet {
    private long startTime ;

    @Override
    public void destroy() {
        System.out.println("Duration of SubjectListServlet is " + (System.currentTimeMillis() - startTime)+ "milli seconds");
    }

    @Override
    public void init() throws ServletException {
        startTime = System.currentTimeMillis();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SubjectRepository sr = new SubjectRepository();
        List<Subject> subjectList = sr.findAll();
        request.setAttribute("subject", subjectList);
        request.getRequestDispatcher("/subjects_list.jsp").forward(request,response);

//        out.println("<html><body>");
//        out.println("<h1>Subject List::</h1><hr>");
//        out.println("<table>");
//        out.println("<tr>");
//        out.println("<td>Subject Id</td><td>Subject Title</td><td>Credit</td>");
//        out.println("</tr>");
//        for(Subject subject : sr.findAll()) {
//            out.println("<tr>");
//            out.println("<td> "+ subject.getId()+" </td>");
//            out.println("<td> "+ subject.getTitle()+" </td>");
//            out.println("<td> "+ subject.getCredit()+" </td>");
//            out.println("</tr>");
//        }
//        out.println("</table>");
//        out.println("</body></html>");
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
      }
}
