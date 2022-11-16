package com.example.coursemodel.repos;

import com.example.coursemodel.Course;
import org.springframework.data.repository.CrudRepository;

public interface CourseRepo extends CrudRepository<Course, Long> {

    Course getById(Integer courseId);
}
