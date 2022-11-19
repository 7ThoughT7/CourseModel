package com.example.coursemodel.service;

import com.example.coursemodel.Course;
import com.example.coursemodel.repos.CourseRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Service
public class CourseService {

    @Autowired
    private CourseRepo courseRepo;

    public Course getById(Integer courseId) {

        Iterable<Course> courses = courseRepo.findAll();
        for (Course s : courses) {
            if (Objects.equals(s.getId(), courseId)) {
                return s;
            }
        }
        return null;
    }
}
