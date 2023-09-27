package com.wipro.evs.controller;

import com.wipro.evs.model.LoginCredentials;
import com.wipro.evs.repository.LoginRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LandingPageController {

    @Autowired
    private LoginRepo loginRepo;

    // ROOT PAGE
    @RequestMapping("/")
    public String index() {
        return "index";
    }

    // LOGIN PAGE
    @RequestMapping("/loginPage")
    public String loginPage() {
        return "loginPage";
    }

    // REGISTER PAGE
    @RequestMapping("/registerPage")
    public ModelAndView registerPage() {

        // Create a new object to Login Credentials
        LoginCredentials loginCred = new LoginCredentials();

        // Set the userType to 'U' for User
        loginCred.setUserType('U');

        // Save the object to the database using DATA JPA
        LoginCredentials registerCred = loginRepo.save(loginCred); 
        
        // Return the register page with unique user id
        ModelAndView mv = new ModelAndView("registerPage");
        mv.addObject("userid", registerCred.getUserId());

        return mv;
    }

}
