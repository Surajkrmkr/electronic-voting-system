package com.wipro.evs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class UserDetails {
    @Id
    private int userId;

    @Column 
    private int voterId;

    @Column(length = 15)
    private String firstName;

    @Column(length = 15)
    private String lastName;

    @Column(length = 15)
    private String dob;

    @Column
    private int age;

    @Column(length = 1)
    private char gender;

    @Column(length = 30)
    private String address;

    @Column(length = 15)
    private String phone;

    @Column(length = 15)
    private String constituency;

    @Column(length = 15)
    private String district;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getVoterId() {
        return voterId;
    }

    public void setVoterId(int voterId) {
        this.voterId = voterId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getConstituency() {
        return constituency;
    }

    public void setConstituency(String constituency) {
        this.constituency = constituency;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    @Override
    public String toString() {
        return "UserDetails [address=" + address + ", age=" + age + ", constituency=" + constituency + ", district="
                + district + ", dob=" + dob + ", firstName=" + firstName + ", gender=" + gender + ", lastName="
                + lastName + ", phone=" + phone + ", userId=" + userId + ", voterId=" + voterId + "]";
    }

}
