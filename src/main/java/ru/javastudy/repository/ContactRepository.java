package ru.javastudy.repository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import ru.javastudy.entities.ContactEntity;

import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import java.util.List;

public interface ContactRepository extends CrudRepository<ContactEntity, Integer>{

    List<ContactEntity> findByFirstName(String firstName);
    List<ContactEntity> findByFirstNameAndLastName(String firstName, String lastName);

    @SuppressWarnings("JpaQlInspection")
    @Query(name = "getAllEmployees", value = "SELECT * FROM contact c WHERE c.id > 12 ORDER BY c.birth_date DESC", nativeQuery = true)
    List<ContactEntity> findAll1();
}