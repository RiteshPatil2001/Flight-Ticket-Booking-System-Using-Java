
package com.flightticketbookingSystem.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.flightticketbookingSystem.models.AllUsers;
import com.flightticketbookingSystem.repos.DeleteRepository;
import com.flightticketbookingSystem.repos.UpdateRepository;
import com.flightticketbookingSystem.services.AllUsersService;

@Controller
public class AllUsersController {

	@Autowired
	private AllUsersService allusersService;
	
	
	@Autowired
    private DeleteRepository deleteRepository;
	
	
	@Autowired
    private UpdateRepository updateRepository;
	
	

    @PostMapping("/deleteUser")
    public String deleteUser(@RequestParam("userId") Long userId, RedirectAttributes redirectAttributes) {
    	deleteRepository.deleteById(userId);
    	redirectAttributes.addFlashAttribute("status", "success");
	    redirectAttributes.addFlashAttribute("message", "User Deleted Successfully!");
        return "redirect:/allusers"; // Replace with the correct URL of the user details page
    }
    

	/*
	 * @GetMapping("/allusers") public String getAllDetails(Model model) {
	 * model.addAttribute("allusers", allusersService.getAllUsers()); return
	 * "allusers";
	 * 
	 * }
	 */
	
	@Autowired
	private  AllUsersService alluserService;

    @Autowired
    public void AllUserController(AllUsersService alluserService) {
        this.alluserService = alluserService;
    }

    @GetMapping("/allusers")
    public String displayUsers(Model model) {
        List<AllUsers> allUsers = alluserService.getAllUsers();
        model.addAttribute("allusers", allUsers);
        return "allusers"; // Return the name of the JSP view
    }

    @PostMapping("/updateUser")
    public String updateUser(@ModelAttribute("user") AllUsers user) {
        alluserService.updateUser(user);
        return "redirect:/allusers?updated=true";
    }


    
}
