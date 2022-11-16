package com.example.coursemodel;

import javax.persistence.*;
import java.util.Set;

@Entity
public class PassingCourse {
//    List<Integer> grades = new ArrayList<>();

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer passingCourseId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "studentId")
    private Student students;

    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name = "courseId")
    private Set<Course> courses;


    public PassingCourse() {
    }

    public Integer getPassingCourseId() {
        return passingCourseId;
    }

    public void getCurrentAverageScore() {}

    public void getFinalGrade() {

    }
}
