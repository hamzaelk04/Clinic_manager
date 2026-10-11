package repository.dao;

import model.Appointment;
import model.enums.AppointmentStatus;
import repository.AppointmentRepository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

public class AppointmentDao extends AbstractDao<Appointment> implements AppointmentRepository {
    public AppointmentDao() {
        super(Appointment.class);
    }

    @Override
    public List<Appointment> findByPatientId(UUID patientId) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT a FROM Appointment a JOIN FETCH a.doctor WHERE a.patient.id = :patientId ORDER BY a.startDateTime DESC", Appointment.class)
                .setParameter("patientId", patientId)
                .getResultList());
    }

    @Override
    public List<Appointment> findByDoctorId(UUID doctorId) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT a FROM Appointment a JOIN FETCH a.patient WHERE a.doctor.id = :doctorId ORDER BY a.startDateTime DESC", Appointment.class)
                .setParameter("doctorId", doctorId)
                .getResultList());
    }

    @Override
    public List<Appointment> findByDoctorIdAndPeriod(UUID doctorId, LocalDateTime rangeStart, LocalDateTime rangeEnd) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT a FROM Appointment a JOIN FETCH a.patient WHERE a.doctor.id = :doctorId "
                        + "AND a.startDateTime >= :rangeStart AND a.startDateTime < :rangeEnd ORDER BY a.startDateTime", Appointment.class)
                .setParameter("doctorId", doctorId)
                .setParameter("rangeStart", rangeStart)
                .setParameter("rangeEnd", rangeEnd)
                .getResultList());
    }

    @Override
    public boolean existsOverlap(UUID doctorId, LocalDateTime start, LocalDateTime end) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT COUNT(a) FROM Appointment a WHERE a.doctor.id = :doctorId AND a.status <> :canceled "
                        + "AND a.startDateTime < :end AND a.endDateTime > :start", Long.class)
                .setParameter("doctorId", doctorId)
                .setParameter("canceled", AppointmentStatus.CANCELED)
                .setParameter("start", start)
                .setParameter("end", end)
                .getSingleResult() > 0);
    }
}
