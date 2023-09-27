package com.wipro.evs.repository;

import com.wipro.evs.model.PartyDetails;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface PartyRepo extends CrudRepository<PartyDetails, Integer> {

    Iterable<PartyDetails> findByElectionId(int electionId);

    @Query(value = "SELECT d FROM PartyDetails d WHERE noOfVotes = ( SELECT MAX(noOfVotes) FROM PartyDetails )")
    PartyDetails findMaxByNoOfVotes();
}
