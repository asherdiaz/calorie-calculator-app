package com.techelevator.CalorieCalculator.model;

public class Activity {

	private int caloriesBurned;
	private int minutesActive;
	private double calsBurnedPerPound;
	private double calsBurnedPerMinute;
	
	public int calculateCalories(int minutesActive, int weight) {
		return caloriesBurned;
	}

	public int getMinutesActive() {
		return minutesActive;
	}

	public void setMinutesActive(int minutesActive) {
		this.minutesActive = minutesActive;
	}

	public double getCaloriesBurnedPerMinute() {
		return calsBurnedPerMinute;
	}

	public void setCaloriesBurnedPerMinute(int weight, double calsBurnedPerPound) {
		 this.calsBurnedPerMinute = (double)weight * calsBurnedPerPound;
	}

	//Calories burned per pounds per minute
	public double getCalsBurnedPerPound() {
		return calsBurnedPerPound;
	}

	public void setCalsBurnedPerPound(double calsBurnedByPound) {
		this.calsBurnedPerPound = calsBurnedByPound;
	}
	
}
