package repository;

import model.User;

public interface UserRepository {
    void save(User user);

    boolean emailExists(String email);

    public User findByEmail(String email);
}
