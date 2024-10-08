package com.skilldistillery.tallestmountains.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		List<TallestMountain> allMount = tallMount.findAll();
		model.addAttribute("mountains", allMount);
		return "home";
	}
	
	@RequestMapping(path="getMountainList.do", method = RequestMethod.GET)
	public ModelAndView showList(Model modle) {
		ModelAndView mv = new ModelAndView();
		try {
		List<TallestMountain> allMount = tallMount.findAll();
		if(allMount.isEmpty()) {
			mv.addObject("errorMsg", "No mountain on the List");
			mv.setViewName("showList");
		}else {
			mv.addObject("mountains", allMount);
			mv.setViewName("showList");
		}
		
		}catch (Exception e) {
			 mv.addObject("errorMsg", "An error occurred while retrieving the mountain list.");
		        mv.setViewName("showList"); 
		        e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping(path = "getMountain.do", method = RequestMethod.GET)
	public ModelAndView findById(@RequestParam(value = "mountainId", required = false) Integer mountainId) {
		ModelAndView mv = new ModelAndView();
		
		try {

			if (mountainId == null) {
				mv.addObject("errorMsg", "No mountain ID provided.");
			} else {
				TallestMountain foundMountain = tallMount.findById(mountainId);
				if(foundMountain == null) {
					mv.addObject("errorMsg", "The mountain with ID " + mountainId + " was not found.");
					
				}else {
					
					mv.addObject("mountain", foundMountain);
				}
			}
			mv.setViewName("show");
		} catch (Exception e) {
			mv.addObject("errorMsg", "An error occurred while retrieving the mountain.");
			mv.setViewName("show");
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping(path = "updateForm.do", method = RequestMethod.GET)
	public ModelAndView showUpdateForm(@RequestParam("mountainId") int id) {
		ModelAndView mv = new ModelAndView();
		TallestMountain mountain = tallMount.findById(id);
		if(mountain != null) {
			mv.addObject("mountain", mountain);
			mv.setViewName("updateForm");
		}else {
			mv.addObject("errorMsg", "Mountain not found");
			mv.setViewName("updateForm");
		}
		return mv;
		
	}
	
	@RequestMapping(path = "updateMountain.do", method = RequestMethod.POST)
	public ModelAndView updateMountain(@ModelAttribute("mountain") TallestMountain mountain) {
		ModelAndView mv = new ModelAndView();

		try {
			TallestMountain updatedMountain = tallMount.update(mountain.getId(), mountain);
			if (updatedMountain != null) {
				mv.addObject("mountain", updatedMountain);
				mv.setViewName("show");
			}

		} catch (Exception e) {
			mv.addObject("errorMsg", "Error occured while updating the mountain.");
			mv.setViewName("show");
			e.printStackTrace();
		}
		return mv;

	}
	
	@RequestMapping(path = "DeleteMountain.do", method = RequestMethod.POST)
	public ModelAndView deleteMountain(@RequestParam("mountainId") int mountainId) {
		
		ModelAndView mv = new ModelAndView();
		TallestMountain mountain = tallMount.findById(mountainId);
		
		if(mountain == null) {
			mv.addObject("errorMsg", "Mountain not found with ID: " + mountainId);
			mv.setViewName("error");
		}else {
			boolean deleted = tallMount.deleteById(mountainId);
			if(!deleted) {
				mv.addObject("errorMsg", "Failed to delete the mountain");
				mv.setViewName("error");
			}else {
				
				mv.addObject("successMsg", "Mountain deleted successfully");
				List<TallestMountain> allMount = tallMount.findAll();
				mv.setViewName("delete");
			}
		}
		return mv;
		
	}
	
	@RequestMapping(path = "newMountainForm.do", method = RequestMethod.GET)
	public ModelAndView showNewMountainForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("newMountainForm");
		return mv;
	}
	
	@RequestMapping(path = "addMountain.do", method = RequestMethod.POST)
	public ModelAndView addMountain(@ModelAttribute("mountain") TallestMountain mountain) {
		
		ModelAndView mv = new ModelAndView();
		
		try {
			TallestMountain newMountain = tallMount.create(mountain);
			mv.addObject("mountain", newMountain);
			mv.setViewName("show");
		}catch (Exception e) {
			mv.addObject("error", "Failed to add the mountain");
			mv.setViewName("error");
		}
		return mv;
	}
	
	
	

}
