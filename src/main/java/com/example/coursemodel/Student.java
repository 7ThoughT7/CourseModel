package com.example.coursemodel;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer studentId;
    private String name;
    private String address;
    private String telephone;
    private String email;
    private Integer countingNum;
    private float averagePerform;

    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name = "passingCourseId")
    private Set<PassingCourse> passingCourses;

    @ManyToMany(mappedBy = "students")
    private Set<Course> courses;

    public Student() {
    }

    public Student(String name, String address, String telephone, String email, Integer countingNum) {
        this.name = name;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        this.countingNum = countingNum;
    }

    public void maybeSignUp() {}

    public void getListOfListedCourses() {}

    public Integer getId() {
        return studentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getCountingNum() {
        return countingNum;
    }

    public void setCountingNum(Integer countingNum) {
        this.countingNum = countingNum;
    }

    public float getAveragePerform() {
        return averagePerform;
    }

    public void setAveragePerform(float averagePerform) {
        this.averagePerform = averagePerform;
    }

}
