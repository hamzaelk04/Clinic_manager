package repository.dao;

import config.JpaUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import model.User;
import repository.UserRepository;

public class UserDao implements UserRepository {
    @Override
    public void save(User user) {
        EntityManager entityManager = JpaUtil.createEntityManager();

        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();

            entityManager.persist(user);

            transaction.commit();
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
                throw e;
            }
        } finally {
            entityManager.close();
        }
    }

    @Override
    public boolean emailExists(String email) {
        EntityManager entityManager = JpaUtil.createEntityManager();

        try {
            Long count = entityManager.createQuery("SELECT COUNT(u) FROM User u WHERE u.email = :email", Long.class)
                    .setParameter("email", email)
                    .getSingleResult();

            return count > 0;
        } finally {
            entityManager.close();
        }
    }

    @Override
    public User findByEmail(String email) {
        EntityManager entityManager = JpaUtil.createEntityManager();

        try {
            return entityManager.createQuery("SELECT u FROM User u WHERE u.email = :email", User.class)
                    .setParameter("email", email)
                    .getResultStream()
                    .findFirst()
                    .orElse(null);
        } finally {
            entityManager.close();
        }
    }
}
