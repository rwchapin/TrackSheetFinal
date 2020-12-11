package com.web.tracksheet.user_repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.web.tracksheet.user_model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	@Query("FROM User WHERE email=?1 AND password=?2 ")
	Optional<User> login(String email, String password);
	//find user by email	
	Optional<User> findUserByEmail(String email);

}
