package com.example.coursemodel.repos;

import com.example.coursemodel.Course;
import com.example.coursemodel.Professor;
import org.springframework.data.repository.CrudRepository;

public interface ProfessorRepo extends CrudRepository<Professor, Long> {

    Professor getById(Integer professorId);
}