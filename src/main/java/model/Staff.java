package model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import model.enums.Role;

@Entity
@Table(name = "staff")
public class Staff extends User {
    public Staff() {
        setRole(Role.STAFF);
    }
}
