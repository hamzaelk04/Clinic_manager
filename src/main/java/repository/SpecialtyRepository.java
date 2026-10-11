package repository;

import model.Specialty;

import java.util.List;
import java.util.UUID;

public interface SpecialtyRepository extends BaseRepository<Specialty> {
    Specialty findByName(String name);

    boolean nameExists(String name);

    List<Specialty> findByDepartmentId(UUID departmentId);
}
