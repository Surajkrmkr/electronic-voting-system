package com.wipro.evs.controller;

import com.wipro.evs.model.ElectionDetails;
import com.wipro.evs.model.PartyDetails;
import com.wipro.evs.model.UserDetails;
import com.wipro.evs.model.VoteDetails;
import com.wipro.evs.repository.ElectionRepo;
import com.wipro.evs.repository.PartyRepo;
import com.wipro.evs.repository.UserRepo;
import com.wipro.evs.repository.VoteRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class VoterController {

    @Autowired
    private UserRepo userRepo;
    @Autowired
    private VoteRepo voteRepo;
    @Autowired
    private PartyRepo partyRepo;
    @Autowired
    private ElectionRepo electionRepo;

    @RequestMapping("/requestVoterId")
    public ModelAndView requestVoterId(@RequestParam int userId) {
        ModelAndView mv = new ModelAndView();
        UserDetails userDetail = userRepo.findById(userId).get();
        userDetail.setVoterId(1);
        userRepo.save(userDetail);
        mv.addObject("userDetail", userDetail);
        mv.setViewName("voter/homePage");
        return mv;
    }

    @RequestMapping("/voteAction")
    public ModelAndView voteAction(@RequestParam int userId, @RequestParam int electionId) {
        ModelAndView mv = new ModelAndView();
        UserDetails userDetail = userRepo.findById(userId).get();
        VoteDetails voteDetails = voteRepo.findById(userDetail.getVoterId()).get();
        boolean isVoted = voteDetails.isVoted();
        Iterable< PartyDetails> partyList = partyRepo.findByElectionId(electionId);
        mv.addObject("partyList", partyList);
        mv.addObject("electionId", electionId);
        mv.addObject("isVoted", isVoted);
        mv.addObject("userDetail", userDetail);
        mv.setViewName("voter/votingPage");
        return mv;
    }

    @RequestMapping("/castVote")
    public ModelAndView castVoter(@RequestParam int userId, @RequestParam int electionId, @RequestParam int partyId) {
        ModelAndView mv = new ModelAndView();
        UserDetails userDetail = userRepo.findById(userId).get();
        
        VoteDetails voteDetails = voteRepo.findById(userDetail.getVoterId()).get();
        voteDetails.setVoted(true);
        voteRepo.save(voteDetails);
        mv.addObject("isVoted", voteDetails.isVoted());

        PartyDetails partyDetails = partyRepo.findById(partyId).get();
        partyDetails.setNoOfVotes(partyDetails.getNoOfVotes() + 1);
        partyRepo.save(partyDetails);

        if (userDetail.getVoterId() != 0 && userDetail.getVoterId() != 1) {
            try {
                ElectionDetails electionDetails = electionRepo.findById(voteDetails.getElectionId()).get();
                mv.addObject("electionDetails", electionDetails);
            } catch (Exception e) {
                mv.addObject("electionDetails", null);
            }
        }
        mv.addObject("msg", "Voted successfully");
        mv.addObject("userDetail", userDetail);
        mv.setViewName("voter/homePage");
        return mv;
    }
}
