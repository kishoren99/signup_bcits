package bcits.signup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bcits.signup.dto.UserDto;
import bcits.signup.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@GetMapping("/usp")
	public String loadSingup() {
		return "signup.jsp";
	}
	
	@GetMapping("/ul")
	public String adminLogin() {
		return "login.jsp";
	}
	
	@PostMapping("/register")
	@ResponseBody
	public String createAccount(@ModelAttribute UserDto userDto) {
		return userService.createAccount(userDto);
	}
	
	@PostMapping("/userlogin")
	public String loginValidation(UserDto adminDto, ModelMap map) {
		return userService.loginValidation(adminDto, map);
	}

}
