package com.techelevator.CalorieCalculator.model;

public class Walk extends Activity {

	private double caloriesBurned;
	private double calsBurnedPerMinute;
	private double calsBurnedPerPound = .037;
	
	public double calculateCalories(double minutesActive, int weight) {
		calsBurnedPerMinute = calsBurnedPerPound * (double)weight;
		caloriesBurned = calsBurnedPerMinute * minutesActive;
		return caloriesBurned;
	}

}
