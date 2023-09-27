package com.wipro.evs.repository;

import com.wipro.evs.model.VoterIdRequest;

import org.springframework.data.repository.CrudRepository;

public interface VoterIdRepo extends CrudRepository<VoterIdRequest, Integer> {
}
