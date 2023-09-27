package com.wipro.evs.repository;

import com.wipro.evs.model.UserDetails;

import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository<UserDetails, Integer> {
}
