package repository;

import model.Availability;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

public interface AvailabilityRepository extends BaseRepository<Availability> {
    List<Availability> findByDoctorId(UUID doctorId);

    List<Availability> findActiveByDoctorIdAndDay(UUID doctorId, DayOfWeek dayOfWeek, LocalDate date);
}
