package repository.dao;

import config.JpaUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import model.User;
import repository.UserRepository;

public class UserDao implements UserRepository {
        EntityManager entityManager = JpaUtil.createEntityManager();

    @Override
    public void save(User user) {
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
}
