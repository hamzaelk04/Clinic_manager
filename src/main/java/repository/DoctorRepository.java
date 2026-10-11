package repository;

import model.Doctor;

import java.util.List;
import java.util.UUID;

public interface DoctorRepository extends BaseRepository<Doctor> {
    Doctor findByMatricule(String matricule);

    boolean matriculeExists(String matricule);

    List<Doctor> findBySpecialtyId(UUID specialtyId);

    List<Doctor> findByDepartmentId(UUID departmentId);
}
