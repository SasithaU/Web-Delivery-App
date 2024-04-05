package com.shiiping;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class CalculateShipping extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CalculateShipping() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
try {
			
			double ShipCost = 0;
			String Location = request.getParameter("location");
			double Amount = 0 ;
			float numOfKgs = Float.parseFloat(request.getParameter("weight"));
			double TotShipCost = 0;
			String ExpressShipCost = request.getParameter("shippingMethod");
			
			if (Location.equals("limColombo")) {
		        Amount = 10.00;
		    } else if (Location.equals("greColombo")) {
		        Amount = 15.00;
		    } else if (Location.equals("outStation")) {
		        Amount = 50.00;
		    }
			
ShipCost = Amount * numOfKgs;
			
			if(ExpressShipCost.equals("express")) {
				TotShipCost = ShipCost + 500 ; 
			}else {
				TotShipCost = ShipCost  ; 
			}
			
			request.setAttribute("TotalShippingCost", TotShipCost);
			RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {

		    request.setAttribute("errorDetails", e.getMessage());
		    RequestDispatcher rd = request.getRequestDispatcher("/error.jsp");
		    rd.forward(request, response);
		}


		
		
	}

}
