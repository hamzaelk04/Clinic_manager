package repository.dao;

import model.MedicalNote;
import repository.MedicalNoteRepository;

import java.util.List;
import java.util.UUID;

public class MedicalNoteDao extends AbstractDao<MedicalNote> implements MedicalNoteRepository {
    public MedicalNoteDao() {
        super(MedicalNote.class);
    }

    @Override
    public MedicalNote findByAppointmentId(UUID appointmentId) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT n FROM MedicalNote n WHERE n.appointment.id = :appointmentId", MedicalNote.class)
                .setParameter("appointmentId", appointmentId)
                .getResultStream()
                .findFirst()
                .orElse(null));
    }

    @Override
    public List<MedicalNote> findByDoctorId(UUID doctorId) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT n FROM MedicalNote n WHERE n.doctor.id = :doctorId ORDER BY n.date DESC", MedicalNote.class)
                .setParameter("doctorId", doctorId)
                .getResultList());
    }

    @Override
    public List<MedicalNote> findByPatientId(UUID patientId) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT n FROM MedicalNote n WHERE n.appointment.patient.id = :patientId ORDER BY n.date DESC", MedicalNote.class)
                .setParameter("patientId", patientId)
                .getResultList());
    }
}
