<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping cost Info</title>
<style>
          body {
            font-family:DM Sans;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ff8;
            padding: 30px;
            border-radius: 0px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

 h1 {
            text-align: center;
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
 select {
            appearance: none;
        }

        .shipping-method {
            margin-bottom: 20px;
        }

        .shipping-method label {
            display: inline-block;
            margin-right: 10px;
        }

        input[type="radio"] {
            display: none;
        }

        input[type="radio"] + label {
            background-color: #f4f4f4;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
        }
 input[type="radio"]:checked + label {
            background-color: #007BFF;
            color: #fff;
        }

        input[type="submit"] {
            background-color: #FF0000;
            color: #333;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }
 input[type="submit"]:hover {
            background-color: #FF4500; 
        }
 </style>    


</head>
<body>
	<div class="container">
        <h1>Shipping Form</h1>
        <form action="CalculateShipping" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="address">Delivery Address:</label>
            <textarea id="address" name="address" required></textarea>

            <label for="weight">Weight of parcel(kg):</label>
            <input type="number" id="weight" name="weight" step="0.1" required>

            <label for="location">Location:</label>
            <select id="location" name="location">
                <option value="limColombo">Colombo city limits</option>
                <option value="greColombo">Greater Colombo</option>
                <option value="outStation">Outstation</option>
            </select>
	 <div class="shipping-method" id="shippingMethodContainer">
			    <label>Shipping Method:</label>
			    <input type="radio" id="standard" name="shippingMethod" value="standard" required>
			    <label for="standard">Standard</label>
			    
			    <input type="radio" id="express" name="shippingMethod" value="express" required>
			    <label for="express">Express</label>
			</div>


            <input type="submit" value="Calculate Shipping Cost">
        </form>
    
    </div>
	
</body>
</html>