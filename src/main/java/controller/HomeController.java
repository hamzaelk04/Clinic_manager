package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Doctor;
import model.Specialty;
import model.User;
import model.enums.Role;
import service.SpecialtyService;
import service.UserService;

import java.io.IOException;
import java.util.*;

/** Public landing page used by /WEB-INF/views/public/home.jsp. */
@WebServlet({"/home", ""})
public class HomeController extends HttpServlet {

    private final SpecialtyService specialtyService = new SpecialtyService();
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<User> doctors = userService.findByRole(Role.DOCTOR);

        Map<UUID, Integer> countBySpecialty = new HashMap<>();
        List<Map<String, Object>> featuredDoctors = new ArrayList<>();
        for (User u : doctors) {
            if (!(u instanceof Doctor)) {
                continue;
            }
            Doctor d = (Doctor) u;
            Specialty s = d.getSpecialty();
            if (s != null) {
                countBySpecialty.merge(s.getId(), 1, Integer::sum);
            }
            if (featuredDoctors.size() < 4) {
                Map<String, Object> m = new HashMap<>();
                m.put("id", d.getId());
                m.put("fullName", d.getFirstName() + " " + d.getLastName());
                m.put("title", d.getTitle() == null ? "" : d.getTitle());
                m.put("photo", "");
                m.put("nextSlot", "");
                m.put("specialtyId", s == null ? "" : s.getId());
                m.put("specialtyName", s == null ? "" : s.getName());
                m.put("departmentName", s == null || s.getDepartment() == null ? "" : s.getDepartment().getName());
                featuredDoctors.add(m);
            }
        }

        List<Map<String, Object>> specialties = new ArrayList<>();
        for (Specialty s : specialtyService.findAll()) {
            Map<String, Object> m = new HashMap<>();
            m.put("id", s.getId());
            m.put("name", s.getName());
            m.put("doctorCount", countBySpecialty.getOrDefault(s.getId(), 0));
            specialties.add(m);
        }

        request.setAttribute("specialties", specialties);
        request.setAttribute("featuredDoctors", featuredDoctors);
        request.getRequestDispatcher("/WEB-INF/views/public/home.jsp").forward(request, response);
    }
}
