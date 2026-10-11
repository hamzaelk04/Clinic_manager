package repository;

import model.User;

import java.util.UUID;

public interface UserRepository {
    void save(User user);

    User update(User user);

    User findById(UUID id);

    boolean emailExists(String email);

    public User findByEmail(String email);
}
