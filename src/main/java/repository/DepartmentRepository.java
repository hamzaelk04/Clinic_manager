package repository;

import model.Department;

public interface DepartmentRepository extends BaseRepository<Department> {
    Department findByName(String name);

    boolean nameExists(String name);
}
