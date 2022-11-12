package com.example.coursemodel.controller;

import com.example.coursemodel.Professor;
import com.example.coursemodel.repos.ProfessorRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class ProfessorController {

    @Autowired
    private ProfessorRepo professorRepo;

    @GetMapping("/listProfessors")
    public String professors(Map<String, Object> model) {

        Iterable<Professor> professors = professorRepo.findAll();
        model.put("professors", professors);

        return "listProfessors";
    }

    @PostMapping("/listProfessors")
    public String addProfessor(@RequestParam String name, @RequestParam String address,
                               @RequestParam String telephone, @RequestParam float payment) {

        Professor professor = new Professor(name, address, telephone, payment);
        professorRepo.save(professor);

        return "redirect:/listProfessors";
    }
}
