package com.wipro.evs.controller;

import com.wipro.evs.model.UserDetails;
import com.wipro.evs.model.VoterIdRequest;
import com.wipro.evs.repository.UserRepo;
import com.wipro.evs.repository.VoterIdRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ElectoralController {

    @Autowired
    private UserRepo userRepo;
    @Autowired
    private VoterIdRepo voterIdRepo;

    @RequestMapping("generateVoterId")
    public ModelAndView generateVoterId(@RequestParam int userId, @RequestParam int currentUserId,
            @RequestParam Boolean reject) {
        ModelAndView mv = new ModelAndView();

        // Generate a 8 digit random number
        if (!reject) {
            int voterId = 0;
            do {
                voterId = (int) (Math.random() * 100000000);
            } while (voterIdRepo.findById(voterId).isPresent());

            UserDetails generatedVoterUser = userRepo.findById(userId).get();
            generatedVoterUser.setVoterId(voterId);
            userRepo.save(generatedVoterUser);
        }

        // Remove Generated VoterID User from pending list
        voterIdRepo.deleteById(userId);

        UserDetails userDetail = userRepo.findById(currentUserId).get();
        mv.addObject("userDetail", userDetail);

        Iterable<VoterIdRequest> pending = voterIdRepo.findAll();
        mv.addObject("pending", pending);
        if(!reject) mv.addObject("msg", "Voter ID generated successfully");
        else mv.addObject("msg", "Voter ID rejected successfully"); 
        mv.setViewName("electoral/homePage");
        return mv;
    }
}
