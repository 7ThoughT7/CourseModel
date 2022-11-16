package com.example.coursemodel;

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

//    @ManyToOne(fetch = FetchType.EAGER)
//    @JoinColumn(name = "passingCourseId")
//    private PassingCourse passingCourse;

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

    public void addStudent() {

    }

    public void deleteStudent() {

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
