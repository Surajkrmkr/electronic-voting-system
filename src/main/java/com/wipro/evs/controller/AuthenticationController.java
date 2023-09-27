package com.wipro.evs.controller;

import java.util.Optional;

import com.wipro.evs.model.ElectionDetails;
import com.wipro.evs.model.LoginCredentials;
import com.wipro.evs.model.UserDetails;
import com.wipro.evs.model.VoteDetails;
import com.wipro.evs.model.VoterIdRequest;
import com.wipro.evs.repository.ElectionRepo;
import com.wipro.evs.repository.LoginRepo;
import com.wipro.evs.repository.UserRepo;
import com.wipro.evs.repository.VoteRepo;
import com.wipro.evs.repository.VoterIdRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthenticationController {

    @Autowired
    private LoginRepo loginRepo;
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private VoterIdRepo voterIdRepo;
    @Autowired
    private VoteRepo voteRepo;
    @Autowired
    private ElectionRepo electionRepo;

    @RequestMapping("/login")
    public ModelAndView login(LoginCredentials loginCred) {

        // LOGIN ACTION - Check if the user exists in the database

        Optional<LoginCredentials> currentLoginCred = loginRepo.findById(loginCred.getUserId());
        if (currentLoginCred.isPresent()) {
            if (currentLoginCred.get().getPassword().equals(loginCred.getPassword())) {
                return redirectUserToDestination(currentLoginCred.get());
            } else {
                ModelAndView mv = new ModelAndView("loginPage");
                mv.addObject("error", "Invalid Password");
                return mv;
            }
        } else {
            ModelAndView mv = new ModelAndView("loginPage");
            mv.addObject("error", "Invalid UserId");
            return mv;
        }
    }

    @RequestMapping("/register")
    public ModelAndView register(UserDetails user, int userid, String password) {

        // Set the password to LoginCredentials object and save it to the database
        LoginCredentials loginCred = new LoginCredentials(userid, password, 'U');
        loginRepo.save(loginCred);

        // Set the user id to UserDetails object
        user.setUserId(userid);
        userRepo.save(user);

        // add object to the model and redirect to the login page
        ModelAndView mv = new ModelAndView("loginPage");
        mv.addObject("msg", "User Registered Successfully");

        return mv;
    }

    // Redirect the user to the appropriate page
    public ModelAndView redirectUserToDestination(LoginCredentials lc) {
        ModelAndView mv = new ModelAndView();
        UserDetails userDetail = userRepo.findById(lc.getUserId()).get();
        mv.addObject("userDetail", userDetail);
        if (lc.getUserType() == 'A') {
            mv.setViewName("admin/homePage");
            return mv;
        } else if (lc.getUserType() == 'E') {
            Iterable<VoterIdRequest> pending = voterIdRepo.findAll();
            mv.addObject("pending", pending);
            mv.setViewName("electoral/homePage");
            return mv;
        } else {
            if (userDetail.getVoterId() != 0 && userDetail.getVoterId() != 1) {
                try {
                    VoteDetails voteDetails = voteRepo.findById(userDetail.getVoterId()).get();
                    ElectionDetails electionDetails = electionRepo.findById(voteDetails.getElectionId()).get();
                    mv.addObject("electionDetails", electionDetails);
                } catch (Exception e) {
                    mv.addObject("electionDetails", null);
                }
            }
            mv.setViewName("voter/homePage");
            return mv;
        }
    }
}
