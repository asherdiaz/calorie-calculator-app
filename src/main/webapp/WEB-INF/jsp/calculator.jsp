<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Count those calories!</title>
</head>
<body>
<div>
	WELCOME. To the COUNTER OF CALORIES!
</div>
<div>
	<c:url value ="/results" var="formAction"/>
	<form id ="calorieCount" method="GET" action="${formAction}">		
		<p>
		<label for="weight">Weight in lbs: </label><br>
		<input type= "text" id="weight" name="weight" placeholder="Weight"></input>
		</p>
		<p>
		<label for="minutesActive">Minutes Active: </label><br>
		<input type="text" id="minutesActive" name="minutesActive" placeholder="Minutes"></input>
		</p>
		
		<p>
		<label for="activity">Activity: </label><br>
		<select name="activity">
			<option value = "running">Running</option>
			<option value = "hiking">Hiking</option>
			<option value = "walking">Walking</option>
		</select>
		</p>
		<input class="formSubmitButton" type ="submit" value="Calculate"></input>
	</form>
</div>


</body>
</html>