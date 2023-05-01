package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.dao.UserDao;
import com.model.User;

@Controller
public class UserController {
	@Autowired
	private UserDao dao;

	@RequestMapping("/Home")
	public String home(Model m) {
		List<User> list = dao.getAllUser();
		m.addAttribute("list", list);
		return "Home";
	}
	
	
	@RequestMapping("/")
	public String about2() {
		return "index";
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public RedirectView addUser(@ModelAttribute User u,HttpServletRequest request) {
		System.out.println(u);
		dao.insertUser(u);
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath()+"/Home");
		return view;
	}
}

