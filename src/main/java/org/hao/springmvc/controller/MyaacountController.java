package org.hao.springmvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MyaacountController {
	
	/**
     * To LOGIN or ENROLL PAGE
     */
    @RequestMapping(value = { "/" }, method = RequestMethod.GET)
    public String listUsers(ModelMap model) {
    	
        return "Home";
    }

}
