package ph.com.leslieanne.impracta.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import ph.com.leslieanne.impracta.domain.Doctor;

import javax.sql.DataSource;
import java.util.List;

/**
 * Created by Leslie on 26/03/2016.
 */
@Repository
public class DoctorRepository {
    private JdbcTemplate jdbcTemplate;
    @Autowired
    public DoctorRepository(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Doctor> getAllDoctors() {
        final String SQL = "select * from doctors";

        return jdbcTemplate.query(SQL, (rs, rowNum) -> {
            Doctor doctor = new Doctor();
            doctor.setId(rs.getLong("id"));
            doctor.setName(rs.getString("name"));
            return doctor;
        });
    }
}
