package repository;

import model.Appointment;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

public interface AppointmentRepository extends BaseRepository<Appointment> {
    List<Appointment> findByPatientId(UUID patientId);

    List<Appointment> findByDoctorId(UUID doctorId);

    List<Appointment> findByDoctorIdAndPeriod(UUID doctorId, LocalDateTime rangeStart, LocalDateTime rangeEnd);

    boolean existsOverlap(UUID doctorId, LocalDateTime start, LocalDateTime end);
}
