package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.enums.Role;
import service.UserService;

import java.io.IOException;

/** Matches the navbar link  ${ctx}/${role}/dashboard */
@WebServlet({"/admin/dashboard", "/patient/dashboard", "/doctor/dashboard", "/staff/dashboard"})
public class DashboardController extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();

        if ("/patient/dashboard".equals(path)) {
            request.setAttribute("doctors", userService.findByRole(Role.DOCTOR));
        }
        request.getRequestDispatcher("/WEB-INF/views" + path + ".jsp").forward(request, response);
    }
}
