package com.skilldistillery.tallestmountains.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.tallestmountains.dao.TallestMountainDAO;
import com.skilldistillery.tallestmountains.entities.TallestMountain;

@Controller
public class TallestMountainController {

	@Autowired
	private TallestMountainDAO tallMount;
	
//	@RequestMapping(path = {"/", "home.do"})
//	public String index() {
//		return "home";
//	}

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		List<TallestMountain> allMount = tallMount.findAll();
		model.addAttribute("mountains", allMount);
		return "home";
	}

	@RequestMapping(path="getMountain.do", method = RequestMethod.GET)
	public ModelAndView findById(@RequestParam("mountainId") int mountainId) {
		ModelAndView mv = new ModelAndView();

		TallestMountain foundMountain = tallMount.findById(mountainId);
		
		if(foundMountain == null) {
			mv.addObject("errorMsg", "The mountain with ID of: " + mountainId + " was not found.");
		}else {
			mv.addObject("mountain", foundMountain);
		}
		mv.setViewName("show");

		return mv;
	}

}
