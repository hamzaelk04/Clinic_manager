package repository;

import model.User;
import model.enums.Role;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface UserRepository {

    void save(User user);

    Optional<User> findById(UUID id);

    User findByEmail(String email);

    void update(User user);

    List<User> findByRole(Role role);

}