package com.skilldistillery.jpacrud.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SuperBowlController {

	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}
//	@RequestMapping(path="getSuper.do")
//	public String showFilm(Integer fid, Model model) {
//		SuperBowl superbowl = filmDao.findById(fid);
//		model.addAttribute("film", film);
//		return "film/show";
//		
//	}
}
