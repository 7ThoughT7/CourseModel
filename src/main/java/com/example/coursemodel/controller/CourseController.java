package com.example.coursemodel.controller;

import com.example.coursemodel.Course;
import com.example.coursemodel.Student;
import com.example.coursemodel.repos.CourseRepo;
import com.example.coursemodel.repos.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class CourseController {

    @Autowired
    private CourseRepo courseRepo;

    @Autowired
    private StudentRepo studentRepo;

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

    @GetMapping("/list/listCourses")
    public String listStudents(Model model) {
        model.addAttribute("courses", courseRepo.findAll());
        return "/list/listCourses";
    }

    @GetMapping("edit/courseEdit/{courseId}")
    public String courseEditForm(Model model, @PathVariable Integer courseId) {
        model.addAttribute("course", courseRepo.getById(courseId));
        model.addAttribute("students", studentRepo.findAll());
        return "edit/courseEdit";
    }

    @PostMapping("/edit/courseEdit/{courseId}")
    public String courseSave(@PathVariable Integer courseId,
                              @RequestParam Integer studentId
    ) {
        Student student = studentRepo.getById(studentId);
        Course course = courseRepo.getById(courseId);
        student.setCourses(course);
        course.setStudents(student);
        studentRepo.save(student);
        courseRepo.save(course);

        return "redirect:/edit/courseEdit/{courseId}";
    }
}
