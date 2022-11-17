package com.example.coursemodel.controller;

import com.example.coursemodel.Course;
import com.example.coursemodel.Student;
import com.example.coursemodel.repos.CourseRepo;
import com.example.coursemodel.repos.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/list/listStudents")
    public String listStudents(Model model) {
        model.addAttribute("students", studentRepo.findAll());
        return "/list/listStudents";
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
        course.addStudent(student, course);
        studentRepo.save(student);
        courseRepo.save(course);

        return "redirect:/edit/studentEdit/{studentId}";
    }

    @GetMapping("/delete/studentDelete/{studentId}")
    public String userDeleteForm(Model model, @PathVariable Integer studentId) {
        model.addAttribute("student", studentRepo.getById(studentId));
        model.addAttribute("courses", courseRepo.findAll());
        return "delete/studentDelete";
    }

    @PostMapping("/delete/studentDelete/{studentId}")
    public String studentDelete(@PathVariable Integer studentId,
                                @RequestParam Integer courseId
    ) {
        Student student = studentRepo.getById(studentId);
        Course course = courseRepo.getById(courseId);
        course.deleteStudent(student, course);
        studentRepo.save(student);
        courseRepo.save(course);

        return "redirect:/delete/studentDelete/{studentId}";
    }
}
