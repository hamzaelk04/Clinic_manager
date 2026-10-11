package model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import model.enums.Role;

@Entity
@Table(name = "admins")
public class Admin extends User {
    public Admin() {
        setRole(Role.ADMIN);
    }
}
