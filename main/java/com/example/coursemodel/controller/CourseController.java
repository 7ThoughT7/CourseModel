package com.example.coursemodel.controller;

import com.example.coursemodel.Course;
import com.example.coursemodel.repos.CourseRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class CourseController {

    @Autowired
    private CourseRepo courseRepo;

    @GetMapping("/add/addCourses")
    public String courses(Map<String, Object> model) {

        Iterable<Course> courses = courseRepo.findAll();
        model.put("courses", courses);

        return "add/addCourses";
    }

    @PostMapping("/add/addCourses")
    public String addCourse(@RequestParam String title, @RequestParam int number,
                            @RequestParam float price) {

        Course course = new Course(title, number, price);
        courseRepo.save(course);

        return "redirect:/add/addCourses";
    }
}
