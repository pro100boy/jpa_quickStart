package ru.javastudy.entities;

import javax.persistence.*;

@Entity
@Table(name = "contact_tel_detail", schema = "javastudy", catalog = "")
public class ContactTelDetailEntity {
    private Integer id;
    private String telType;
    private String telNumber;
    private int version;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "tel_type", nullable = false, insertable = true, updatable = true, length = 20)
    public String getTelType() {
        return telType;
    }

    public void setTelType(String telType) {
        this.telType = telType;
    }

    @Basic
    @Column(name = "tel_number", nullable = false, insertable = true, updatable = true, length = 20)
    public String getTelNumber() {
        return telNumber;
    }

    public void setTelNumber(String telNumber) {
        this.telNumber = telNumber;
    }

    @Basic
    @Column(name = "version", nullable = false, insertable = true, updatable = true)
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    private ContactEntity contact = new ContactEntity();

    @ManyToOne
    @JoinColumn(name = "contact_id", referencedColumnName = "id", nullable = false)
    public ContactEntity getContact() {
        return contact;
    }

    public void setContact(ContactEntity contact) {
        this.contact = contact;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ContactTelDetailEntity that = (ContactTelDetailEntity) o;

        if (id != that.id) return false;
        if (version != that.version) return false;
        if (telType != null ? !telType.equals(that.telType) : that.telType != null) return false;
        if (telNumber != null ? !telNumber.equals(that.telNumber) : that.telNumber != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (telType != null ? telType.hashCode() : 0);
        result = 31 * result + (telNumber != null ? telNumber.hashCode() : 0);
        result = 31 * result + version;
        return result;
    }

    @Override
    public String toString() {
        return "ContactTelDetailEntity{" +
                "version=" + version +
                ", telNumber='" + telNumber + '\'' +
                ", telType='" + telType + '\'' +
                ", id=" + id +
                '}';
    }
}