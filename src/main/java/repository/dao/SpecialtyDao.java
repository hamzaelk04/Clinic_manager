package repository.dao;

import model.Specialty;
import repository.SpecialtyRepository;

import java.util.List;
import java.util.UUID;

public class SpecialtyDao extends AbstractDao<Specialty> implements SpecialtyRepository {
    public SpecialtyDao() {
        super(Specialty.class);
    }

    @Override
    public Specialty findByName(String name) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT s FROM Specialty s WHERE s.name = :name", Specialty.class)
                .setParameter("name", name)
                .getResultStream()
                .findFirst()
                .orElse(null));
    }

    @Override
    public boolean nameExists(String name) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT COUNT(s) FROM Specialty s WHERE s.name = :name", Long.class)
                .setParameter("name", name)
                .getSingleResult() > 0);
    }

    @Override
    public List<Specialty> findByDepartmentId(UUID departmentId) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT s FROM Specialty s WHERE s.department.id = :departmentId ORDER BY s.name", Specialty.class)
                .setParameter("departmentId", departmentId)
                .getResultList());
    }
}
