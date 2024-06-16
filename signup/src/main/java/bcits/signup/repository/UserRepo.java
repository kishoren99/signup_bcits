package bcits.signup.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import bcits.signup.dto.UserDto;

public interface UserRepo extends JpaRepository<UserDto, String>{}
