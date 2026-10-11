package repository;

import model.MedicalNote;

import java.util.List;
import java.util.UUID;

public interface MedicalNoteRepository extends BaseRepository<MedicalNote> {
    MedicalNote findByAppointmentId(UUID appointmentId);

    List<MedicalNote> findByDoctorId(UUID doctorId);

    List<MedicalNote> findByPatientId(UUID patientId);
}
