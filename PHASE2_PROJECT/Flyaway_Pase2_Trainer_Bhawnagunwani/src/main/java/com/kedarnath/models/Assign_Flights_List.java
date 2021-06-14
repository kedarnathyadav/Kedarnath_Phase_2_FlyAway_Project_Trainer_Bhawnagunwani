package com.kedarnath.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "assign_flights_list")
public class Assign_Flights_List  implements Serializable{
	
	 private static final long serialVersionUID = 1L;
	   @Id
	   @GeneratedValue(strategy = GenerationType.AUTO)
	   private int assignid;
	   @Column(name = "flightname")
	   private String flightname;
	   @Column(name = "source")
	   private String source;
	   @Column(name = "destination")
	   private String destination;
	   @Column(name = "day")
	   private String day;
	   @Column(name = "ticketfare")
	   private String ticketfare;
	public int getAssignid() {
		return assignid;
	}
	public void setAssignid(int assignid) {
		this.assignid = assignid;
	}
	public String getFlightname() {
		return flightname;
	}
	public void setFlightname(String flightname) {
		this.flightname = flightname;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getTicketfare() {
		return ticketfare;
	}
	public void setTicketfare(String ticketfare) {
		this.ticketfare = ticketfare;
	}
	  

}
