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
//@RequestMapping("/main")
public class StudentController {

    @Autowired
    private StudentRepo studentRepo;

    @Autowired
    private CourseRepo courseRepo;

    @GetMapping("/add/addStudents")
    public String students(Map<String, Object> model) {

        Iterable<Student> students = studentRepo.findAll();
        model.put("students", students);

        return "add/addStudents";
    }

    @PostMapping("/add/addStudents")
    public String addStudent(@RequestParam String name, @RequestParam String address,
                             @RequestParam String telephone, @RequestParam String email,
                             @RequestParam Integer countingNum) {

        Student student = new Student(name, address, telephone, email, countingNum);
        studentRepo.save(student);

        return "redirect:/add/addStudents";
    }

    @GetMapping("/listStudents")
    public String listStudents(Model model) {
        model.addAttribute("students", studentRepo.findAll());
        return "/listStudents";
    }

    @GetMapping("edit/studentEdit/{studentId}")
    public String userEditForm(Model model, @PathVariable Integer studentId) {
        model.addAttribute("student", studentRepo.getById(studentId));
        model.addAttribute("courses", courseRepo.findAll());
        return "edit/studentEdit";
    }

    @PostMapping("/edit/studentEdit/{studentId}")
    public String studentSave(@PathVariable Integer studentId,
                              @RequestParam Integer courseId
    ) {
        Student student = studentRepo.getById(studentId);
        Course course = courseRepo.getById(courseId);
        student.setCourses(course);
        course.setStudents(student);
        studentRepo.save(student);
        courseRepo.save(course);

        return "redirect:/edit/studentEdit/{studentId}";
    }
}
