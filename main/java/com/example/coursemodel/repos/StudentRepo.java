package com.example.coursemodel.repos;

import com.example.coursemodel.Course;
import com.example.coursemodel.Student;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

//@Repository
public interface StudentRepo extends CrudRepository<Student, Integer> {

//    List<Student> findByTag(String name);

    Student getById(Integer studentId);
}
