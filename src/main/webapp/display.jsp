<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ship cost End Result</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        height : 100vh;
        width : 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        
    }

    h1 {
        text-align: center;
        
    }

    .container {
        max-width: 500px;
        margin: 0 auto;
        padding: 20px;
        border-radius: 10px;
    }

    p {
        font-size: 18px;
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body>
	<div class="container">
        
        <%
            Double totalShippingCost = (Double) request.getAttribute("TotalShippingCost");
        %>
        <h1>Shipping Cost Rs:<%= totalShippingCost %></h1>

    </div>
</body>
</html>