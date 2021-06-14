package com.kedarnath.models;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "savebookings")
public class SaveBooking  implements Serializable{
	 private static final long serialVersionUID = 1L;
	 
	   @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private int pnrid;
	   
	   @Column(name = "source")
	   private String source;
	   @Column(name = "destination")
	   private String destination;
	   @Column(name = "date")
	   private String date;
	   @Column(name = "day")
	   private String day;
	   @Column(name = "flightid")
	   private String flightid;
	   @Column(name = "flightname")
	   private String flightname;
	   @Column(name = "noofpersons")
	   private Integer noofpersons;
	   @Column(name = "passengername")
	   private String passengername;
	   @Column(name = "passengeremail")
	   private String passengeremail;
	   @Column(name = "passengerphone")
	   private String passengerphone;
	   @Column(name = "cardperson")
	   private String cardperson;
       @Column(name = "cardno")
	   private String cardno;
	   @Column(name = "ticketfare")
	   private Integer ticketfare;
  
	public int getPnrid() {
		return pnrid;
	}
	public void setPnrid(int pnrid) {
		this.pnrid = pnrid;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	public String getFlightid() {
		return flightid;
	}
	public void setFlightid(String flightid) {
		this.flightid = flightid;
	}
	public String getFlightname() {
		return flightname;
	}
	public void setFlightname(String flightname) {
		this.flightname = flightname;
	}
	public Integer getNoofpersons() {
		return noofpersons;
	}
	public void setNoofpersons(Integer noofpersons) {
		this.noofpersons = noofpersons;
	}
	public String getPassengername() {
		return passengername;
	}
	public void setPassengername(String passengername) {
		this.passengername = passengername;
	}
	public String getPassengeremail() {
		return passengeremail;
	}
	public void setPassengeremail(String passengeremail) {
		this.passengeremail = passengeremail;
	}
	public String getPassengerphone() {
		return passengerphone;
	}
	public void setPassengerphone(String passengerphone) {
		this.passengerphone = passengerphone;
	}
	public String getCardperson() {
		return cardperson;
	}
	public void setCardperson(String cardperson) {
		this.cardperson = cardperson;
	}
	public String getCardno() {
		return cardno;
	}
	public void setCardno(String cardno) {
		this.cardno = cardno;
	}
	public Integer getTicketfare() {
		return ticketfare;
	}
	public void setTicketfare(Integer ticketfare) {
		this.ticketfare = ticketfare;
	}
	   
	   
}
