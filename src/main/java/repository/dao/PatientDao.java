package repository.dao;

import model.Patient;
import repository.PatientRepository;

public class PatientDao extends AbstractDao<Patient> implements PatientRepository {
    public PatientDao() {
        super(Patient.class);
    }

    @Override
    public Patient findByCin(String cin) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT p FROM Patient p WHERE p.cin = :cin", Patient.class)
                .setParameter("cin", cin)
                .getResultStream()
                .findFirst()
                .orElse(null));
    }

    @Override
    public boolean cinExists(String cin) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT COUNT(p) FROM Patient p WHERE p.cin = :cin", Long.class)
                .setParameter("cin", cin)
                .getSingleResult() > 0);
    }
}
