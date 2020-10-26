package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.SuperBowlDAO;
import com.skilldistillery.jpacrud.entities.SuperBowls;

@Controller
public class SuperBowlController {
	@Autowired
	private SuperBowlDAO superbowlDao;

//	@RequestMapping(path = "/")
//	public String index() {
//		return "index";
//	}
	@RequestMapping(path="getSB.do")
	public String listBowl(Model model) {
		List<SuperBowls> sbList = superbowlDao.findAll();
		model.addAttribute("superbowls", sbList);
		return "index";
		
	}
	
	@RequestMapping(path="getSuper.do")
	public String SuperBowls(Integer SB, Model model) {
		SuperBowls superbowl = superbowlDao.findById(SB);
		model.addAttribute("super", superbowl);
		return "sb/show";
		
	}
	
}
