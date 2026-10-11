package service;

import model.User;
import model.enums.Role;
import org.mindrot.jbcrypt.BCrypt;
import repository.UserRepository;
import repository.dao.UserDao;

public class AuthService {
    private final UserRepository userRepository = new UserDao();

    public void register(User user) {
        String hashedPw = BCrypt.hashpw(user.getPasswordHash(), BCrypt.gensalt());

        user.setPasswordHash(hashedPw);
        user.setRole(Role.PATIENT);

        try {
            userRepository.save(user);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public boolean emailExists(String email) {
        return userRepository.emailExists(email);
    }

    public User login(String email, String password) {
        User user = userRepository.findByEmail(email);

        if (user != null && BCrypt.checkpw(password, user.getPasswordHash())) {
            return user;
        }

        return null;
    }
}
