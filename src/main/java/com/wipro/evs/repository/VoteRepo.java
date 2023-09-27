package com.wipro.evs.repository;

import com.wipro.evs.model.VoteDetails;

import org.springframework.data.repository.CrudRepository;

public interface VoteRepo extends CrudRepository<VoteDetails, Integer> {
    
}

