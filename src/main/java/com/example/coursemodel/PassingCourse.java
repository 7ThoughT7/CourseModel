package com.example.coursemodel;

import javax.persistence.*;
import java.util.List;

@Entity
public class PassingCourse {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer Id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "studentId")
    private Student students;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "courseId")
    private Course courses;
    private static List<Integer> grades;


    public PassingCourse() {
    }

    public PassingCourse(Student student, Course course) {
        this.students = student;
        this.courses = course;
    }

    public Integer getPassingCourseId() {
        return Id;
    }

    public void getCurrentAverageScore() {}

    public void getFinalGrade() {

    }

    public Student getStudents() {
        return students;
    }

    public void setStudents(Student students) {
        this.students = students;
    }

    public Course getCourses() {
        return courses;
    }

    public void setCourses(Course course) {
        this.courses = course;
    }

    public List<Integer> getGrades() {
        return grades;
    }

    public void setGrades(List<Integer> grades) {
        this.grades = grades;
    }
}
