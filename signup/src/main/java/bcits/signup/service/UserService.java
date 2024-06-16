package bcits.signup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import bcits.signup.dao.UserDao;
import bcits.signup.dto.UserDto;

@Service
public class UserService {

	@Autowired
	UserDao userDao;

	public String createAccount(UserDto userDto) {
		return userDao.createAccount(userDto);
	}

	public String loginValidation(UserDto userDto, ModelMap map) {
		UserDto dbto = userDao.findAdminById(userDto.getUmail());

		if (dbto != null) {
			if (dbto.getUmail().equals(userDto.getUmail()) && (dbto.getCcpwd().equals(userDto.getCcpwd()))) {
				map.put("pass", "account created sucessfully");
//			map.put("login mail","user id for login"+ adminDto.getEmail());
//			map.put("login mail","please login through mail and password");

				return "home.jsp";

			} else {
				map.put("fail", "please enter proper password");
				return "login.jsp";
			}
		} else {
			return "signup.jsp";
		}

	}

}
