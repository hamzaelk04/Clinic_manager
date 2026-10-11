package controller;

import model.User;
import service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/profile")
public class ProfileController extends HttpServlet {

    private final UserService userService = new UserService();

    @Override
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if(session == null || session.getAttribute("currentUser") == null){
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        User user = (User) session.getAttribute("currentUser");
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/views/auth/profile.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request , HttpServletResponse response)
                       throws ServletException , IOException
    {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("currentUser") == null) {
            response.sendRedirect(
                    request.getContextPath() + "/login"
            );
            return;
        }
        User user = (User) session.getAttribute("currentUser");

        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setPhone(request.getParameter("phone"));
        user.setEmail(request.getParameter("email"));

        userService.updateProfile(user);
        session.setAttribute("currentUser",user);

        response.sendRedirect(request.getContextPath() + "/profile");
    }
}
