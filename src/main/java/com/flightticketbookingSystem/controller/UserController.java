package com.flightticketbookingSystem.controller;

import java.io.IOException;




import java.util.*;
import com.razorpay.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.flightticketbookingSystem.models.Addflight;
import com.flightticketbookingSystem.models.AllUsers;
import com.flightticketbookingSystem.models.Users;
import com.flightticketbookingSystem.services.UserService;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	

	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		model.addAttribute("newUser", new Users());
		return "registration";
	}

	
	
	@PostMapping("/register")
	public String registerUser(@ModelAttribute("newUser") Users user, HttpServletRequest request, RedirectAttributes redirectAttributes) {
	    userService.registerUser(user);
	    
	    // Set success message in flash attributes
	    redirectAttributes.addFlashAttribute("status", "success");
	    redirectAttributes.addFlashAttribute("message", "Account created successfully! Please Login to your Account to continue.");

	    return "redirect:/register";
	}


	@GetMapping("/login")
	public String showLoginForm() {
		return "login";
	}

	
	@PostMapping("/login")
	public String loginUser(HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) throws ServletException, IOException {
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");

	    boolean loginSuccess = userService.loginUser(username, password);
	    if (loginSuccess) {
	    	HttpSession session = request.getSession();
	        session.setAttribute("loggedInUser", username);
	        return "redirect:/home";
	    } else {
	        redirectAttributes.addFlashAttribute("status", "failed");
	        return "redirect:/login";
	    }
	}
	
	
	
	@GetMapping("/adminlogin")
	public String showAdminLoginForm() {
		return "adminlogin";
	}


	
	@PostMapping("/adminlogin")
	public String loginAdmin(HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes, HttpSession session) throws ServletException, IOException {
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");

	    boolean loginSuccess2 = userService.loginAdmin(username, password);
	    if (loginSuccess2) {
	        session.setAttribute("loggedInAdmin", username);
	        return "redirect:/admindashboard";
	    } else {
	        redirectAttributes.addFlashAttribute("status", "failed");
	        return "redirect:/adminlogin";
	    }
	}

	@GetMapping("/admindashboard")
    public String admindashboard() {
        return "admindashboard";
    }
	
	
	@GetMapping("/home")
    public String home() {
        return "home";
    }
	
	
	@GetMapping("/addflight")
    public String addflight() {
        return "addflight";
    }
	
	@PostMapping("/addflight")
	public String addflight(@ModelAttribute("newflight") Addflight addflight, HttpServletRequest request, RedirectAttributes redirectAttributes) {
	    userService.addflight(addflight);
	    // Set success message in flash attributes
	    redirectAttributes.addFlashAttribute("status", "success");
	    redirectAttributes.addFlashAttribute("message", "Flight Added successfully!");

	    return "redirect:/addflight";
	}
	
	
	@GetMapping("/booking")
    public String booking() {
        return "booking";
    }


	@GetMapping("/index")
	public String indexPage(HttpSession session,Model model) {
        List<Users> users = userService.getUsers();
        model.addAttribute("users", users);
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            String usersJson = objectMapper.writeValueAsString(users);
            System.out.println(usersJson);
        } catch (Exception e) {
            e.printStackTrace();
        }
		// Check if the user is logged in
		if (session.getAttribute("loggedInUser") != null) {
			return "index";
		} else {
			return "redirect:/index";
		}
	}
		
  	
  	@PostMapping("/create-order")
  	@ResponseBody
  	public String createOrder(@RequestBody Map<String, Object> data) {
  	    try {
  	        System.out.println(data);

  	        // Check if the amount key exists in the map and is not null
  	        if (data.containsKey("amount") && data.get("amount") != null) {
  	            int amount = Integer.parseInt(data.get("amount").toString());

  	            // Create the Razorpay order
  	            var client = new RazorpayClient("razorpay_ID", "razorpay_sec_ID");
  	            JSONObject orderParams = new JSONObject();
  	            orderParams.put("amount", amount * 100); // Amount in paise
  	            orderParams.put("currency", "INR");
  	            orderParams.put("receipt", "txn_" + System.currentTimeMillis());

  	            Order order = client.Orders.create(orderParams);

  	            // Handle the order creation response as needed
  	            System.out.println(order);

  	            // Return the order details as a JSON response
  	            return order.toString();
  	        } else {
  	            // Handle the case where the 'amount' key is missing or null
  	            // Return an appropriate error message or response
  	            return "{\"error\": \"Missing or null 'amount' in the request\"}";
  	        }
  	    } catch (Exception e) {
  	        // Handle any exceptions that may occur during order creation
  	        e.printStackTrace();
  	        return "{\"error\": \"An error occurred while creating the order\"}";
  	    }
  	}


	@GetMapping("/logout")
	public String logout(HttpSession session) {
		String userType = (String) session.getAttribute("userType");

		if (userType != null && userType.equals("user")) {

			session.removeAttribute("loggedInUser");
			System.out.println("User logged out successfully!!");
		} 

		return "redirect:/";
	}
	
	

}

