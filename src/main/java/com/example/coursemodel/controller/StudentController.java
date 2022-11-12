package com.example.coursemodel.controller;

import com.example.coursemodel.Student;
import com.example.coursemodel.repos.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class StudentController {

    @Autowired
    private StudentRepo studentRepo;

    @GetMapping("/listStudents")
    public String students(Map<String, Object> model) {

        Iterable<Student> students = studentRepo.findAll();
        model.put("students", students);

        return "/listStudents";
    }

    @PostMapping("/listStudents")
    public String addStudent(@RequestParam String name, @RequestParam String address,
                             @RequestParam String telephone, @RequestParam String email,
                             @RequestParam Integer countingNum) {

        Student student = new Student(name, address, telephone, email, countingNum);
        studentRepo.save(student);

        return "redirect:/listStudents";
    }
}
