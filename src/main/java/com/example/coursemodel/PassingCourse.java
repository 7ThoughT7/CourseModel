package com.example.coursemodel;

import javax.persistence.*;
import java.util.ArrayList;
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
    private static List<Integer> grades = new ArrayList<>();

    private float averageRating;

    private Integer finalScore;

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

    public void setGrades(Integer grade1, Integer grade2, Integer grade3, Integer grade4, Integer grade5) {
        grades.add(grade1);
        grades.add(grade2);
        grades.add(grade3);
        grades.add(grade4);
        grades.add(grade5);

    }
}
