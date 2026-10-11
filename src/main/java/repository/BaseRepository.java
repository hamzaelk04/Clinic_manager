package repository;

import java.util.List;
import java.util.UUID;

public interface BaseRepository<T> {
    void save(T entity);

    T update(T entity);

    T findById(UUID id);

    List<T> findAll();

    void deleteById(UUID id);
}
