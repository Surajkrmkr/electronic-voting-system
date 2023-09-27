package com.wipro.evs.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class VoterIdRequest {
    @Id
    private int userId;

    public VoterIdRequest(int userId) {
        this.userId = userId;
    }

    public VoterIdRequest() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "VoterIdRequest [userId=" + userId + "]";
    }
}
