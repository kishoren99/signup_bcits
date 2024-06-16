package bcits.signup.dao;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bcits.signup.dto.UserDto;
import bcits.signup.repository.UserRepo;

@Repository
public class UserDao {

	@Autowired
	UserRepo userRepo;

	public String createAccount(UserDto userDto) {
		userRepo.save(userDto);
		return "<a href=\"https://www.youtube.com/watch?v=PMQUYTrwLjg&ab_channel=FutureCoders\">CLICK here</a>";
	}


	public UserDto findAdminById(String umail) {
		Optional<UserDto> odto = userRepo.findById(umail);
		if (odto.isPresent()) {
			return odto.get();
		} else {
			return null;
		}
	}

}
