package repository.dao;

import model.Availability;
import model.enums.AvailabilityStatus;
import repository.AvailabilityRepository;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

public class AvailabilityDao extends AbstractDao<Availability> implements AvailabilityRepository {
    public AvailabilityDao() {
        super(Availability.class);
    }

    @Override
    public List<Availability> findByDoctorId(UUID doctorId) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT a FROM Availability a WHERE a.doctor.id = :doctorId ORDER BY a.dayOfWeek, a.startTime", Availability.class)
                .setParameter("doctorId", doctorId)
                .getResultList());
    }

    @Override
    public List<Availability> findActiveByDoctorIdAndDay(UUID doctorId, DayOfWeek dayOfWeek, LocalDate date) {
        return execute(entityManager -> entityManager
                .createQuery("SELECT a FROM Availability a WHERE a.doctor.id = :doctorId AND a.dayOfWeek = :dayOfWeek AND a.status = :status "
                        + "AND (a.validFrom IS NULL OR a.validFrom <= :date) AND (a.validTo IS NULL OR a.validTo >= :date) ORDER BY a.startTime", Availability.class)
                .setParameter("doctorId", doctorId)
                .setParameter("dayOfWeek", dayOfWeek)
                .setParameter("status", AvailabilityStatus.ACTIVE)
                .setParameter("date", date)
                .getResultList());
    }
}
