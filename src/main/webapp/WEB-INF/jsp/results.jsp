<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Burn, baby, burn!</title>
</head>
<body>
<div>
You burned <strong><c:out value="${calculator.caloriesBurned}"/> calories</strong> while 
<c:out value="${calculator.activity}"/>! 
</div>
<div>
<c:url value ="/" var="calculatorPage"/>
<a href="${calculatorPage}">I want to calculate some more!</a>
</div>
</body>
</html>