package repository;

import model.Patient;

public interface PatientRepository extends BaseRepository<Patient> {
    Patient findByCin(String cin);

    boolean cinExists(String cin);
}
