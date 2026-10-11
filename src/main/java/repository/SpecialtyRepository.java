package repository;

import model.Department;
import model.Specialty;

import java.util.List;
import java.util.UUID;

public interface SpecialtyRepository {

    void save(Specialty specialty);

    List<Specialty> finAll();

    Specialty findById(UUID id);

    List<Specialty> findByDepartement(Department department);

    void update(Specialty specialty);
}
