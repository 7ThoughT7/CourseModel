package com.example.coursemodel;

import com.example.coursemodel.repos.CourseRepo;
import com.example.coursemodel.repos.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String title;
    private int number;
    private float price;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "passingCourseId")
    private PassingCourse passingCourse;

    @ManyToMany
    @JoinTable(
            name = "course_student",
            joinColumns = @JoinColumn(name = "courseId"),
            inverseJoinColumns = @JoinColumn(name = "studentId"))
    private Set<Student> students;

    @ManyToMany
    @JoinTable(
            name = "course_professor",
            joinColumns = @JoinColumn(name = "courseId"),
            inverseJoinColumns = @JoinColumn(name = "professorId"))
    private Set<Professor> professors;

    public Course() {
    }

    public Course(String title, int number, float price) {
        this.title = title;
        this.number = number;
        this.price = price;
    }

    public void addStudent(Student student, Course course) {
        student.setCourses(course);
        course.setStudents(student);
    }

    public void deleteStudent(Student student, Course course) {
        student.getCourses().remove(course);
        course.getStudents().remove(student);
    }

    public Set<Professor> getProfessors() {
        return professors;
    }

    public void setProfessors(Professor professor) {
        professors.add(professor);
    }

    public Set<Student> getStudents() {
        return students;
    }

    public void setStudents(Student student) {
        students.add(student);
    }

    public Integer getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return title;
    }
}
