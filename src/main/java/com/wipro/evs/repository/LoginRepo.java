package com.wipro.evs.repository;

import com.wipro.evs.model.LoginCredentials;

import org.springframework.data.repository.CrudRepository;

public interface LoginRepo extends CrudRepository<LoginCredentials, Integer> {
}

