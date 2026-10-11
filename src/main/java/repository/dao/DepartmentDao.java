package repository.dao;

import model.Department;
import repository.DepartmentRepository;

public class DepartmentDao extends AbstractDao<Department> implements DepartmentRepository {
    public DepartmentDao() {
        super(Department.class);
    }

    @Override
    public Department findByName(String name) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT d FROM Department d WHERE d.name = :name", Department.class)
                .setParameter("name", name)
                .getResultStream()
                .findFirst()
                .orElse(null));
    }

    @Override
    public boolean nameExists(String name) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT COUNT(d) FROM Department d WHERE d.name = :name", Long.class)
                .setParameter("name", name)
                .getSingleResult() > 0);
    }
}
