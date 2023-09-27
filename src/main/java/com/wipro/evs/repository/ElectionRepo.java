package com.wipro.evs.repository;

import com.wipro.evs.model.ElectionDetails;

import org.springframework.data.repository.CrudRepository;

public interface ElectionRepo extends CrudRepository<ElectionDetails, Integer> {
}

