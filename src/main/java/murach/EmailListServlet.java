package murach;

import java.io.IOException;
import java.time.Year;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) action = "join";

        String url = "/index.jsp";

        if ("join".equals(action)) {
            url = "/index.jsp";
        } else if ("add".equals(action)) {
            String firstName = request.getParameter("firstName");
            String lastName  = request.getParameter("lastName");
            String email     = request.getParameter("email");
            String heardFrom = request.getParameter("heardFrom");
            String heardOther = request.getParameter("heardOther");
            boolean wantsUpdates = "yes".equals(request.getParameter("wantsUpdates"));

            User user = new User(firstName, lastName, email);
            request.setAttribute("user", user);
            request.setAttribute("heardFrom", heardFrom);
            if ("Other".equals(heardFrom) && heardOther != null && !heardOther.isBlank()) {
                request.setAttribute("heardFromOther", heardOther.trim());
            }
            request.setAttribute("wantsUpdates", wantsUpdates);

            // Bước 6: set năm hiện tại để JSP dùng EL hiển thị
            int currentYear = Year.now().getValue();
            request.setAttribute("currentYear", currentYear);

            url = "/thanks.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}