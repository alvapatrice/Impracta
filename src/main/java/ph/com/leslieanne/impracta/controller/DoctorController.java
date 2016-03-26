package ph.com.leslieanne.impracta.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ph.com.leslieanne.impracta.service.DoctorService;

/**
 * Created by Leslie on 25/03/2016.
 */
@Controller
public class DoctorController {
    @Autowired
    private DoctorService doctorService;

    @RequestMapping(value={"/", "/home", "/index"}, method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("doctors", doctorService.getAllDoctors());
        System.out.println(doctorService.getAllDoctors());
        return modelAndView;
    }
}
