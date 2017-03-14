<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Burn, baby, burn!</title>
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
		<div id="results">
			<p class="lead">You burned <strong><c:out
					value="${calculator.caloriesBurned}" /> calories</strong> while
			<c:out value="${calculator.activity}" />!
			</p>
		</div>
		<div id="takeMeBack">
			<c:url value="/" var="calculatorPage" />
			<a href="${calculatorPage}">I want to calculate some more!</a>
		</div>
	</div>
</body>
</html>