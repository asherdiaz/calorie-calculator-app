<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Count those calories!</title>
<c:url value="css/bootstrap.min.css" var="bootstrapUrl"/>
<c:url value="css/calorieCalculator.css" var="calcCSS" />
<link rel="stylesheet" type="text/css" href="${bootstrapUrl}"/>
<link rel="stylesheet" type="text/css" href="${calcCSS}" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
<script
	src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.js "></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="js/calculatorValidation.js"></script>
</head>
<body>
	<div class="content">
		<div id="welcome"><p class="lead">Calculate how many calories you just burned!</p></div>
		<div id="calculatorForm">
			<c:url value="/results" var="formAction" />
			<form id="calorieCounter" method="GET" action="${formAction}">
				<p>
					<label for="activity">Activity: </label><br> <select
						name="activity">
						<option value="running">Running</option>
						<option value="hiking">Hiking</option>
						<option value="walking">Walking</option>
					</select>
				</p>
				<p>
					<label for="weight">Weight in lbs: </label><br> <input
						type="text" id="weight" name="weight" placeholder="Weight"></input>
				</p>
				<p>
					<label for="minutesActive">Minutes Active: </label><br> <input
						type="text" id="minutesActive" name="minutesActive"
						placeholder="Minutes"></input>
				</p>

			
				<p>
				<input class="formSubmitButton" type="submit" class="btn btn-primary" value="Calculate"></input>
				</p>
			</form>
		</div>
	</div>

</body>
</html>