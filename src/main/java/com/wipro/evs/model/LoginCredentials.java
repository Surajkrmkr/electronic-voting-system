package com.wipro.evs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LoginCredentials")
public class LoginCredentials {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int userId;

    @Column(length = 15)
    private String password;

    @Column(length = 1)
    private char userType;

    public LoginCredentials() {
    }

    public LoginCredentials(int userId, String password, char userType) {
        this.userId = userId;
        this.password = password;
        this.userType = userType;
    }

    @Override
    public String toString() {
        return "LoginCredentials [password=" + password + ", userId=" + userId + ", userType=" + userType + "]";
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public char getUserType() {
        return userType;
    }

    public void setUserType(char userType) {
        this.userType = userType;
    }

}
