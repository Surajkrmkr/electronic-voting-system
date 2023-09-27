package com.wipro.evs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class ElectionDetails {
    @Id
    private int electionId;

    @Column
    private String electionName;

    @Column
    private String electionTime;

    @Column
    private String electionDate;

    @Column
    private boolean electionStatus;

    public ElectionDetails() {
    }

    public int getElectionId() {
        return electionId;
    }

    public void setElectionId(int electionId) {
        this.electionId = electionId;
    }

    public String getElectionName() {
        return electionName;
    }

    public void setElectionName(String electionName) {
        this.electionName = electionName;
    }

    public String getElectionTime() {
        return electionTime;
    }

    public void setElectionTime(String electionTime) {
        this.electionTime = electionTime;
    }

    public String getElectionDate() {
        return electionDate;
    }

    public void setElectionDate(String electionDate) {
        this.electionDate = electionDate;
    }

    public boolean getElectionStatus() {
        return electionStatus;
    }

    public void setElectionStatus(boolean electionStatus) {
        this.electionStatus = electionStatus;
    }

    @Override
    public String toString() {
        return "ElectionDetails [electionDate=" + electionDate + ", electionId=" + electionId + ", electionName="
                + electionName + ", electionStatus=" + electionStatus + ", electionTime=" + electionTime + "]";
    }

}
