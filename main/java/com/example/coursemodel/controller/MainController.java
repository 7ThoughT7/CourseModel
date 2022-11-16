package com.example.coursemodel.controller;

import com.example.coursemodel.Student;
import com.example.coursemodel.repos.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {

    @GetMapping("/main")
    public String main(@RequestParam(name = "name", required = false, defaultValue = "")
                           String name, Model model) {

        model.addAttribute("name", name);

        return "main";
    }


}
