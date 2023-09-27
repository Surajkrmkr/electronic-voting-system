package com.wipro.evs.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class VoteDetails {
    @Id
    private int voterId;

    @Column
    private int electionId;

    @Column
    private boolean isVoted;

    public VoteDetails(int voterId, int electionId, boolean isVoted) {
        this.voterId = voterId;
        this.electionId = electionId;
        this.isVoted = isVoted;
    }

    public VoteDetails() {
    }

    public int getVoterId() {
        return voterId;
    }

    public void setVoterId(int voterId) {
        this.voterId = voterId;
    }

    public int getElectionId() {
        return electionId;
    }

    public void setElectionId(int electionId) {
        this.electionId = electionId;
    }

    public boolean isVoted() {
        return isVoted;
    }

    public void setVoted(boolean isVoted) {
        this.isVoted = isVoted;
    }

    @Override
    public String toString() {
        return "VoteDetails [electionId=" + electionId + ", isVoted=" + isVoted + ", voterId=" + voterId + "]";
    }

    

    
}
