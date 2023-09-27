package com.wipro.evs.controller;

import com.wipro.evs.model.ElectionDetails;
import com.wipro.evs.model.PartyDetails;
import com.wipro.evs.model.UserDetails;
import com.wipro.evs.model.VoteDetails;
import com.wipro.evs.model.VoterIdRequest;
import com.wipro.evs.repository.ElectionRepo;
import com.wipro.evs.repository.PartyRepo;
import com.wipro.evs.repository.UserRepo;
import com.wipro.evs.repository.VoteRepo;
import com.wipro.evs.repository.VoterIdRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    @Autowired
    private UserRepo userRepo;
    @Autowired 
    private VoterIdRepo voterIdRepo;
    @Autowired
    private ElectionRepo electionRepo;
    @Autowired
    private PartyRepo partyRepo;
    @Autowired
    private VoteRepo voteRepo;

    @RequestMapping("addElection")
    public ModelAndView addElection(@RequestParam int currentUserId) {
        ModelAndView mv = new ModelAndView();
        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("userDetail", currentUser);
        mv.setViewName("admin/add/electionDetails");
        return mv;
    }

    @RequestMapping("addElectionDetails")
    public ModelAndView addElectionDetails(@RequestParam int currentUserId, ElectionDetails electionDetails){
        ModelAndView mv = new ModelAndView();
        electionRepo.save(electionDetails);
        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("userDetail", currentUser);
        mv.addObject("msg", "Election details added successfully");
        mv.setViewName("admin/homePage");
        return mv;
        
    }

    @RequestMapping("addParty")
    public ModelAndView addParty(@RequestParam int currentUserId) {
        ModelAndView mv = new ModelAndView();
        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("userDetail", currentUser);
        mv.setViewName("admin/add/partyDetails");
        return mv;
    }

    @RequestMapping("addPartyDetails")
    public ModelAndView addPartyDetails(@RequestParam int currentUserId, PartyDetails partyDetails){
        ModelAndView mv = new ModelAndView();
        partyRepo.save(partyDetails);
        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("userDetail", currentUser);
        mv.addObject("msg", "Party details added successfully");
        mv.setViewName("admin/homePage");
        return mv;
        
    }

    @RequestMapping("addCandidate")
    public ModelAndView addCandidate(@RequestParam int currentUserId) {
        ModelAndView mv = new ModelAndView();
        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("userDetail", currentUser);
        mv.setViewName("admin/add/candidateDetails");
        return mv;
    }

    @RequestMapping("addCandidateDetails")
    public ModelAndView addCandidateDetails(@RequestParam int currentUserId, VoteDetails voteDetails){
        ModelAndView mv = new ModelAndView();
        voteDetails.setVoted(false);
        voteRepo.save(voteDetails);
        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("userDetail", currentUser);
        mv.addObject("msg", "Vote details added successfully");
        mv.setViewName("admin/homePage");
        return mv;
        
    }

    
    @RequestMapping("addVoterRequest")
    public ModelAndView addVoterRequest(@RequestParam int userId, @RequestParam int currentUserId){
        ModelAndView mv = new ModelAndView();
        
        VoterIdRequest voterIdRequest = new VoterIdRequest();
        voterIdRequest.setUserId(userId);
        voterIdRepo.save(voterIdRequest);
        
        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("userDetail", currentUser);
        mv.addObject("msg", "Voter ID Request sent to EO");
        mv.setViewName("admin/homePage");
        return mv;
        
    }


    @GetMapping("allVoter")
    public ModelAndView showAllVoterDetails(@RequestParam int currentUserId){
        Iterable<UserDetails> allUser = userRepo.findAll();
        ModelAndView mv = new ModelAndView("admin/view/userDetails");
        mv.addObject("allUser", allUser);
    
        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("currentUser", currentUser);
        return mv;
    }

    @GetMapping("allElection")
    public ModelAndView showAllElectionDetails(@RequestParam int currentUserId){
        Iterable<ElectionDetails> electionDetails = electionRepo.findAll();
        ModelAndView mv = new ModelAndView("admin/view/electionDetails");
        mv.addObject("allElection", electionDetails);

        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("currentUser", currentUser);
        return mv;
    }

    @GetMapping("allParty")
    public ModelAndView showAllPartyDetails(@RequestParam int currentUserId){
        Iterable<PartyDetails> partyDetails = partyRepo.findAll();
        ModelAndView mv = new ModelAndView("admin/view/partyDetails");
        mv.addObject("allParty", partyDetails);

        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("currentUser", currentUser);
        return mv;
    }

    @GetMapping("allCandidate")
    public ModelAndView showAllCandidateDetails(@RequestParam int currentUserId){
        Iterable<VoteDetails> voteDetails = voteRepo.findAll();
        ModelAndView mv = new ModelAndView("admin/view/candidateDetails");
        mv.addObject("allCandidate", voteDetails);

        UserDetails currentUser = userRepo.findById(currentUserId).get();
        mv.addObject("currentUser", currentUser);
        return mv;
    }

    @GetMapping("declareResult")
    public ModelAndView declareResult(@RequestParam int electionId){
        // Creating a model view with name resultPage
        ModelAndView mv = new ModelAndView("admin/view/resultPage");

        // Getting party which has max no of votes 
        PartyDetails partyDetails = partyRepo.findMaxByNoOfVotes();

        // Getting election details
        ElectionDetails electionDetails = electionRepo.findById(electionId).get();
        // Set election status to true that means it has been ended
        electionDetails.setElectionStatus(true);
        electionRepo.save(electionDetails);
        mv.addObject("partyDetails", partyDetails);
        return mv;
    }
}
