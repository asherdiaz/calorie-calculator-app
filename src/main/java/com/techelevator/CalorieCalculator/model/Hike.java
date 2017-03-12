package com.techelevator.CalorieCalculator.model;

public class Hike {

	private double caloriesBurned;
	private double calsBurnedPerMinute;
	private double calsBurnedPerPound = .057;
	
	public double calculateCalories(double minutesActive, int weight) {
		calsBurnedPerMinute = calsBurnedPerPound * (double)weight;
		caloriesBurned = calsBurnedPerMinute * minutesActive;
		return caloriesBurned;
	}
}
