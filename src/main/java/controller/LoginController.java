package controller;

import exception.InvalidCredentialsException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import service.UserService;

import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/auth/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            User user = userService.login(email, password);
            if (!user.isActive()) {
                request.setAttribute("error", "Your account is disabled");
                doGet(request, response);
                return;
            }
            // new session on login (prevents session fixation)
            HttpSession old = request.getSession(false);
            if (old != null) {
                old.invalidate();
            }
            request.getSession(true).setAttribute("currentUser", user);
            response.sendRedirect(request.getContextPath() + "/"
                    + user.getRole().name().toLowerCase() + "/dashboard");
        } catch (InvalidCredentialsException e) {
            request.setAttribute("error", "Invalid email or password");
            request.setAttribute("email", email);
            doGet(request, response);
        }
    }
}
