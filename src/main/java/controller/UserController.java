package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Doctor;
import model.Patient;
import model.Specialty;
import model.User;
import model.enums.Gender;
import model.enums.Role;
import service.SpecialtyService;
import service.UserService;

import java.io.IOException;
import java.time.LocalDate;
import java.util.UUID;

/**
 * /register        public patient self-registration (views/auth/register.jsp)
 * /logout          ends the session
 * /admin/users/*   admin creates doctors / staff
 */
@WebServlet({"/register", "/logout", "/admin/users/*"})
public class UserController extends HttpServlet {

    private final UserService userService = new UserService();
    private final SpecialtyService specialtyService = new SpecialtyService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String servletPath = request.getServletPath();

        if ("/register".equals(servletPath)) {
            request.getRequestDispatcher("/WEB-INF/views/auth/register.jsp").forward(request, response);

        } else if ("/logout".equals(servletPath)) {
            logout(request, response);

        } else if ("/admin/users".equals(servletPath)) {
            String path = request.getPathInfo();
            if ("/doctor".equals(path)) {
                request.setAttribute("specialities", specialtyService.findAll());
                request.getRequestDispatcher("/WEB-INF/views/admin/create_doctor.jsp").forward(request, response);
            } else if ("/staff".equals(path)) {
                request.getRequestDispatcher("/WEB-INF/views/admin/create_staff.jsp").forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String servletPath = request.getServletPath();

        if ("/logout".equals(servletPath)) {
            logout(request, response);
            return;
        }

        boolean selfRegistration = "/register".equals(servletPath);

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Role role;
        if (selfRegistration) {
            role = Role.PATIENT;
        } else {
            String roleParameter = request.getParameter("role");
            if (roleParameter == null || roleParameter.isBlank()) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Role is required");
                return;
            }
            try {
                role = Role.valueOf(roleParameter.toUpperCase());
            } catch (IllegalArgumentException e) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid role");
                return;
            }
        }

        if (password == null || password.isBlank()) {
            forwardError(request, response, selfRegistration, "Password is required");
            return;
        }
        String confirm = request.getParameter("confirmPassword");
        if (selfRegistration && !password.equals(confirm)) {
            forwardError(request, response, true, "Passwords do not match");
            return;
        }

        User user;
        try {
            if (role == Role.PATIENT) {
                Patient patient = new Patient();
                fill(patient, firstName, lastName, phone, email, password, Role.PATIENT);
                patient.setCin(request.getParameter("cin"));
                patient.setAddress(request.getParameter("address"));
                patient.setBloodGroup(request.getParameter("bloodGroup"));

                String dob = request.getParameter("dateOfBirth");
                if (dob != null && !dob.isBlank()) {
                    patient.setDateOfBirth(LocalDate.parse(dob));
                }
                String gender = request.getParameter("gender");
                if (gender != null && !gender.isBlank()) {
                    patient.setGender(Gender.valueOf(gender.toUpperCase()));
                }
                user = patient;

            } else if (role == Role.DOCTOR) {
                Doctor doctor = new Doctor();
                fill(doctor, firstName, lastName, phone, email, password, Role.DOCTOR);
                Specialty specialty = specialtyService.findById(UUID.fromString(request.getParameter("specialtyId")));
                doctor.setSpecialty(specialty);
                doctor.setMatricule(request.getParameter("matricule"));
                doctor.setTitle(request.getParameter("title"));
                user = doctor;

            } else {
                User other = new User();
                fill(other, firstName, lastName, phone, email, password, role == Role.ADMIN ? Role.ADMIN : Role.STAFF);
                user = other;
            }

            userService.createUser(user);

        } catch (IllegalArgumentException | java.time.format.DateTimeParseException e) {
            forwardError(request, response, selfRegistration, "Invalid data: " + e.getMessage());
            return;
        } catch (RuntimeException e) {
            // typically duplicate e-mail / CIN / matricule
            forwardError(request, response, selfRegistration, "Could not create the account (e-mail, CIN or matricule already used?)");
            return;
        }

        if (selfRegistration) {
            response.sendRedirect(request.getContextPath() + "/login?registered=1");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/dashboard");
        }
    }

    private void fill(User u, String firstName, String lastName, String phone, String email, String password, Role role) {
        u.setFirstName(firstName);
        u.setLastName(lastName);
        u.setPhone(phone);
        u.setEmail(email);
        u.setPassword(password);
        u.setRole(role);
        u.setActive(true);
    }

    private void forwardError(HttpServletRequest request, HttpServletResponse response,
                              boolean selfRegistration, String message) throws ServletException, IOException {
        request.setAttribute("error", message);
        for (String p : new String[]{"firstName", "lastName", "email", "phone", "cin"}) {
            request.setAttribute(p, request.getParameter(p));
        }
        String view = selfRegistration ? "/WEB-INF/views/auth/register.jsp" : "/WEB-INF/views/admin/create_staff.jsp";
        request.getRequestDispatcher(view).forward(request, response);
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        response.sendRedirect(request.getContextPath() + "/login");
    }
}
