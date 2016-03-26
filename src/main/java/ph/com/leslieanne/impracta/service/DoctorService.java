package ph.com.leslieanne.impracta.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ph.com.leslieanne.impracta.domain.Doctor;
import ph.com.leslieanne.impracta.repository.DoctorRepository;

import java.util.List;

/**
 * Created by Leslie on 26/03/2016.
 */
@Service
public class DoctorService {
   @Autowired
    private DoctorRepository doctorRepository;

    public List<Doctor> getAllDoctors() {
        return doctorRepository.getAllDoctors();
    }
}
