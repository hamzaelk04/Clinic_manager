package repository.dao;

import config.JpaUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import repository.BaseRepository;

import java.util.List;
import java.util.UUID;
import java.util.function.Function;

public abstract class AbstractDao<T> implements BaseRepository<T> {
    private final Class<T> entityClass;

    protected AbstractDao(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    @Override
    public void save(T entity) {
        executeInTransaction(entityManager -> {
            entityManager.persist(entity);
            return null;
        });
    }

    @Override
    public T update(T entity) {
        return executeInTransaction(entityManager -> entityManager.merge(entity));
    }

    @Override
    public T findById(UUID id) {
        return execute(entityManager -> entityManager.find(entityClass, id));
    }

    @Override
    public List<T> findAll() {
        return execute(entityManager -> entityManager
                .createQuery("SELECT e FROM " + entityClass.getSimpleName() + " e", entityClass)
                .getResultList());
    }

    @Override
    public void deleteById(UUID id) {
        executeInTransaction(entityManager -> {
            T entity = entityManager.find(entityClass, id);

            if (entity != null) {
                entityManager.remove(entity);
            }

            return null;
        });
    }

    protected <R> R execute(Function<EntityManager, R> action) {
        EntityManager entityManager = JpaUtil.createEntityManager();

        try {
            return action.apply(entityManager);
        } finally {
            entityManager.close();
        }
    }

    protected <R> R executeInTransaction(Function<EntityManager, R> action) {
        EntityManager entityManager = JpaUtil.createEntityManager();

        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();

            R result = action.apply(entityManager);

            transaction.commit();

            return result;
        } catch (RuntimeException e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }

            throw e;
        } finally {
            entityManager.close();
        }
    }
}
