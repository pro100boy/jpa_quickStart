package ru.javastudy.impl;

import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.javastudy.entities.ContactEntity;
import ru.javastudy.intf.ContactService;
import ru.javastudy.repository.ContactRepository;

import javax.persistence.EntityManager;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.PersistenceContext;
import java.util.List;

@Service("jpaContactService")
@Repository
@Transactional
public class ContactServiceImpl implements ContactService {

    @Autowired
    private ContactRepository contactRepository;

    @PersistenceContext
    private EntityManager em;

    public List<ContactEntity> findAll() {
        return Lists.newArrayList(contactRepository.findAll());
    }

    public List<ContactEntity> findByFirstName(String firstName) {
        return contactRepository.findByFirstName(firstName);
    }

    public List<ContactEntity> findByFirstNameAndLastName(String firstName, String lastName) {
        return contactRepository.findByFirstNameAndLastName(firstName, lastName);
    }

    public List<ContactEntity> findAll1() {
        List<ContactEntity> employees = contactRepository.findAll1();
        return employees;
    }

    public List<ContactEntity> getAll() {
        return em.createNamedQuery(ContactEntity.ALL_SORTED, ContactEntity.class).getResultList();
    }
}