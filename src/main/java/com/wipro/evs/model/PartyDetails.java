package com.wipro.evs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class PartyDetails {
    @Id
    private int partyId;

    @Column
    private int electionId;

    @Column
    private String partyName;

    @Column
    private int noOfVotes;

    public PartyDetails(int partyId, int electionId, String partyName, int noOfVotes) {
        this.partyId = partyId;
        this.electionId = electionId;
        this.partyName = partyName;
        this.noOfVotes = noOfVotes;
    }

    public PartyDetails() {
    }

    public int getPartyId() {
        return partyId;
    }

    public void setPartyId(int partyId) {
        this.partyId = partyId;
    }

    public int getElectionId() {
        return electionId;
    }

    public void setElectionId(int electionId) {
        this.electionId = electionId;
    }

    public String getPartyName() {
        return partyName;
    }

    public void setPartyName(String partyName) {
        this.partyName = partyName;
    }

    public int getNoOfVotes() {
        return noOfVotes;
    }

    public void setNoOfVotes(int noOfVotes) {
        this.noOfVotes = noOfVotes;
    }

}
