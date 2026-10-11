package service;

import model.Patient;
import model.User;
import model.enums.Role;
import org.mindrot.jbcrypt.BCrypt;
import repository.PatientRepository;
import repository.UserRepository;
import repository.dao.PatientDao;
import repository.dao.UserDao;

public class AuthService {
    private static final int MIN_PASSWORD_LENGTH = 6;

    private final UserRepository userRepository = new UserDao();
    private final PatientRepository patientRepository = new PatientDao();

    public void register(Patient patient) {
        String rawPassword = patient.getPasswordHash();

        if (rawPassword == null || rawPassword.length() < MIN_PASSWORD_LENGTH) {
            throw new IllegalArgumentException("Password must be at least " + MIN_PASSWORD_LENGTH + " characters long.");
        }

        String hashedPw = BCrypt.hashpw(rawPassword, BCrypt.gensalt());

        patient.setPasswordHash(hashedPw);
        patient.setRole(Role.PATIENT);
        patient.setActive(true);

        try {
            userRepository.save(patient);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public boolean emailExists(String email) {
        return userRepository.emailExists(email);
    }

    public boolean cinExists(String cin) {
        return patientRepository.cinExists(cin);
    }

    public User login(String email, String password) {
        User user = userRepository.findByEmail(email);

        if (user != null && BCrypt.checkpw(password, user.getPasswordHash())) {
            return user;
        }

        return null;
    }
}
