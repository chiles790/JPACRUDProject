package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		model.addAttribute("superbowl", superbowl);
		return "results";
		
	}
	@RequestMapping(path="update.do", method = RequestMethod.POST)
	public ModelAndView updateGame(Integer id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("superbowl", superbowlDao.findById(id));
		mv.setViewName("updatingsb");
		return mv;
	}
	
	@RequestMapping(path = "updatingsb.do", method = RequestMethod.POST)
	public ModelAndView updatingsb(Integer id, String winner, int winnerScore, String loser, int loserScore, String mvp, String stadium) {
		ModelAndView mv = new ModelAndView();
		SuperBowls superbowl = superbowlDao.findById(id);
		superbowl.setWinner(winner);
		superbowl.setWinnerScore(winnerScore);
		superbowl.setLoser(loser);
		superbowl.setLoserScore(loserScore);
		superbowl.setMvp(mvp);
		superbowl.setStadium(stadium);
		mv.setViewName("updated");
		return mv;
		
	}
	
	
	@RequestMapping(path ="delete.do", method = RequestMethod.POST)
	public ModelAndView deleteGame(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("superbowl", superbowlDao.delete(id));
		mv.setViewName("delete");
		return mv;
	}
	@RequestMapping(path="create.do", method = RequestMethod.GET)
	public String createGame(Model model, SuperBowls superbowls) {
		model.addAttribute("superbowl", superbowlDao.create(superbowls));
		return "gameCreated";
	}
	
}
