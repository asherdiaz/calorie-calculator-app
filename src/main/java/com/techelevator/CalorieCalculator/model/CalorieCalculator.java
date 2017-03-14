package com.techelevator.CalorieCalculator.model;

public class CalorieCalculator {
	
	private double weight;
	private double caloriesBurned;
	private double calsBurnedPerMin;
	private double calsBurnedPerLb;
	private double minutesActive;

	public CalorieCalculator(String activity, double weight, double minutesActive) {
		this.activity = activity;
		this.weight = weight;
		this.minutesActive = minutesActive;
	}
	
	private String activity;
	public String getActivity() {
		return activity;
	}

	public double getWeight() {
		return weight;
	}
	
	public double getMinutesActive() {
		return minutesActive;
	}

	public double getCaloriesBurned() {
		if(activity.equals("running")) {
			calsBurnedPerLb = .087;
			calsBurnedPerMin = calsBurnedPerLb * weight;
			caloriesBurned = calsBurnedPerMin * minutesActive;
			return (int)caloriesBurned;
		}
		else if(activity.equals("hiking")) {
			calsBurnedPerLb = .057;
			calsBurnedPerMin = calsBurnedPerLb * weight;
			caloriesBurned = calsBurnedPerMin * minutesActive;
			return (int)caloriesBurned;
		}
		else if(activity.equals("walking")) {
			calsBurnedPerLb = .037;
			calsBurnedPerMin = calsBurnedPerLb * weight;
			caloriesBurned = calsBurnedPerMin * minutesActive;
			return (int)caloriesBurned;
		}
		return caloriesBurned;
	}

}
