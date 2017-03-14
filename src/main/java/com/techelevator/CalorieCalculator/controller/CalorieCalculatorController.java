package com.techelevator.CalorieCalculator.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.techelevator.CalorieCalculator.model.CalorieCalculator;

@Controller
public class CalorieCalculatorController {
	
	@RequestMapping("/")
	public String displayCalculator(){
		return "calculator";
	}
	
	@RequestMapping("/results")
	public String calculateResults(HttpServletRequest request){
		String activity = request.getParameter("activity");
		double weight = Double.parseDouble(request.getParameter("weight"));
		double minutesActive = Double.parseDouble(request.getParameter("minutesActive"));
		
		CalorieCalculator calculator = new CalorieCalculator(activity, weight, minutesActive);
		request.setAttribute("calculator", calculator);
		
		return "results";
	}
	
}
