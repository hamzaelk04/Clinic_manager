package config;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAConfig {
    private static final EntityManagerFactory FACTORY = Persistence.createEntityManagerFactory("ClinicPU");

    public static EntityManagerFactory getFactory(){
        return FACTORY;
    }
}
