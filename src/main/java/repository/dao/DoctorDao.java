package repository.dao;

import model.Doctor;
import repository.DoctorRepository;

import java.util.List;
import java.util.UUID;

public class DoctorDao extends AbstractDao<Doctor> implements DoctorRepository {
    public DoctorDao() {
        super(Doctor.class);
    }

    @Override
    public Doctor findByMatricule(String matricule) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT d FROM Doctor d WHERE d.matricule = :matricule", Doctor.class)
                .setParameter("matricule", matricule)
                .getResultStream()
                .findFirst()
                .orElse(null));
    }

    @Override
    public boolean matriculeExists(String matricule) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT COUNT(d) FROM Doctor d WHERE d.matricule = :matricule", Long.class)
                .setParameter("matricule", matricule)
                .getSingleResult() > 0);
    }

    @Override
    public List<Doctor> findBySpecialtyId(UUID specialtyId) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT d FROM Doctor d WHERE d.specialty.id = :specialtyId AND d.active = true ORDER BY d.lastname, d.firstname", Doctor.class)
                .setParameter("specialtyId", specialtyId)
                .getResultList());
    }

    @Override
    public List<Doctor> findByDepartmentId(UUID departmentId) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT d FROM Doctor d WHERE d.department.id = :departmentId AND d.active = true ORDER BY d.lastname, d.firstname", Doctor.class)
                .setParameter("departmentId", departmentId)
                .getResultList());
    }
}
