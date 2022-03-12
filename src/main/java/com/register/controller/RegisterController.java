package com.register.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.register.model.User;
import com.register.service.UserService;

@Controller
public class RegisterController {

	@Autowired
	public UserService userService;
	
	@RequestMapping("/register")
	public String registerHandler() {
		return "register";
	}
	
	@RequestMapping(path = "/process",method = RequestMethod.POST)
	public String processForm(@ModelAttribute("user")User user,BindingResult result) {
		if(result.hasErrors()) {
			return "error";
		}
		userService.insert(user);
		System.out.println("user inserted successfully");
		return "success";
	}
	
	@ResponseStatus(code = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler({NullPointerException.class,NumberFormatException.class,Exception.class})
	public String exceptionHandler() {
		return "error";
	}
}
