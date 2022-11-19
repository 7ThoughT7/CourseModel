package com.example.coursemodel.repos;

import com.example.coursemodel.Course;
import com.example.coursemodel.PassingCourse;
import org.springframework.data.repository.CrudRepository;

public interface PassingCourseRepo extends CrudRepository<PassingCourse, Integer> {

//    PassingCourse getById(Integer passingCourseId);
}
