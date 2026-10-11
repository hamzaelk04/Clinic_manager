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
}
