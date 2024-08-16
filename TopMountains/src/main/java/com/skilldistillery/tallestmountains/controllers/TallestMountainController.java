package com.skilldistillery.tallestmountains.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.tallestmountains.dao.TallestMountainDAO;

@Controller
public class TallestMountainController {
	
	@Autowired
	private TallestMountainDAO tallMount;
	
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		return "home";
	}
	
	
}
