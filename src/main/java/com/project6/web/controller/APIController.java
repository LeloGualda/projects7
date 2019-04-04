package com.project6.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path="/api")
public class APIController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping(path="/create/user")
    public @ResponseBody
    String addNewUser(@RequestParam String name,@RequestParam String pass) {
        User user = new User(name,pass);
        userRepository.save(user);
        return "Saved \n";
    }

    @GetMapping(path="/users")
    public @ResponseBody Iterable<User> getAllUsers() {
        return userRepository.findAll();
    }

}
