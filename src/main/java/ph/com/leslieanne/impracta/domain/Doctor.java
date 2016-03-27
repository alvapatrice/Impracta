package ph.com.leslieanne.impracta.domain;

import org.springframework.stereotype.Component;

/**
 * Created by Leslie on 25/03/2016.
 */
@Component
public class Doctor {
    private Long id;
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {

        if (this == o) return true;
        if (!(o instanceof Doctor)) return false;

        Doctor doctor = (Doctor) o;

        if (getId() != null ? !getId().equals(doctor.getId()) : doctor.getId() != null) return false;
        return getName() != null ? getName().equals(doctor.getName()) : doctor.getName() == null;

    }

    @Override
    public int hashCode() {
        int result = getId() != null ? getId().hashCode() : 0;
        result = 31 * result + (getName() != null ? getName().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Doctor{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
