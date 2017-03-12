package com.techelevator.CalorieCalculator.model;

public class Run extends Activity {
	
	private double caloriesBurned;
	private double calsBurnedPerMinute; 
	private double calsBurnedPerPound = .087;
	
	public double calculateCalories(double minutesActive, int weight) {
		calsBurnedPerMinute = calsBurnedPerPound * (double)weight;
		caloriesBurned = calsBurnedPerMinute * minutesActive;
		return caloriesBurned;
	}
	
}
