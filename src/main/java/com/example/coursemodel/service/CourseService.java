package com.example.coursemodel.service;

import com.example.coursemodel.Course;
import com.example.coursemodel.PassingCourse;
import com.example.coursemodel.Student;
import com.example.coursemodel.repos.CourseRepo;
import com.example.coursemodel.repos.PassingCourseRepo;
import com.example.coursemodel.repos.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Service
public class CourseService {

    @Autowired
    private CourseRepo courseRepo;

    @Autowired
    private StudentRepo studentRepo;

    @Autowired
    private PassingCourseRepo passingCourseRepo;

    @Autowired
    private StudentService studentService;



    public Course getById(Integer courseId) {

        Iterable<Course> courses = courseRepo.findAll();
        for (Course s : courses) {
            if (Objects.equals(s.getId(), courseId)) {
                return s;
            }
        }
        return null;
    }

    public PassingCourse getPassCourse(Integer studentId, Integer courseId) {

        Student student = studentRepo.getById(studentId);
        Course course = courseRepo.getById(courseId);
        Iterable<PassingCourse> passingCourses = passingCourseRepo.findAll();
        for (PassingCourse p : passingCourses) {
            if (p.getStudents() == student && p.getCourses() == course) {
                return p;
            }
        }
        return null;
    }

    public void courseDeleteStudent(Integer studentId, Integer courseId) {
        Student student = studentService.getById(studentId);
        Course course = getById(courseId);
        PassingCourse passingCourse = getPassCourse(studentId, courseId);
        course.deleteStudent(student, course, passingCourse);
        if (passingCourse != null) {
            passingCourseRepo.delete(passingCourse);
        }
        studentRepo.save(student);
        courseRepo.save(course);
    }
}
