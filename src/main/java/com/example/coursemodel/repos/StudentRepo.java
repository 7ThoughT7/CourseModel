package com.example.coursemodel.repos;

import com.example.coursemodel.Student;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface StudentRepo extends CrudRepository<Student, Long> {

//    List<Student> findByTag(String name);
}
