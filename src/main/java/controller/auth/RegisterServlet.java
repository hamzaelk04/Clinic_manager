package controller.auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import service.AuthService;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private AuthService authService = new AuthService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/auth/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String cin = request.getParameter("cin");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!password.equals(confirmPassword)) {
            setErrorAttributes(request, "Passwords do not match.", firstName, lastName, email, phone, cin);
            request.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
            return;
        }

        try {
//            if (userService.emailExists(email)) {
//                setErrorAttributes(request, "An account with this email already exists.", firstName, lastName, email, phone, cin);
//                request.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
//                return;
//            }

            User user = new User();
            user.setFirstname(firstName);
            user.setLastname(lastName);
            user.setEmail(email);
            user.setPhone(phone);
            user.setCin(cin);
            user.setPasswordHash(password);

            authService.register(user);

            response.sendRedirect(request.getContextPath() + "/login?registered=true");
        } catch (Exception e) {
            e.printStackTrace();
            setErrorAttributes(request, "An unexpected error occurred. Please try again.", firstName, lastName, email, phone, cin);
            request.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
        }
    }

    private void setErrorAttributes(HttpServletRequest request, String errorMsg,
                                    String firstName, String lastName, String email, String phone, String cin) {
        request.setAttribute("error", errorMsg);
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("cin", cin);
    }
}
