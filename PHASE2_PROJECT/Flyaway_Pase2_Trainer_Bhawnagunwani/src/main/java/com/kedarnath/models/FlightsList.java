package com.kedarnath.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "flights_list")
public class FlightsList  implements Serializable{
	
	 private static final long serialVersionUID = 1L;
	   @Id
	   @GeneratedValue(strategy = GenerationType.AUTO)
	   private int id;
	   @Column(name = "flightname")
	   private String flightname;
	   @Column(name = "flightcompany")
	   private String flightcompany;
	   @Column(name = "flight_class")
	   private String flight_class;
	   public int getId() {
		return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getFlightname() {
			return flightname;
		}
		public void setFlightname(String flightname) {
			this.flightname = flightname;
		}
		public String getFlightcompany() {
				return flightcompany;
		}
		public void setFlightcompany(String flightcompany) {
				this.flightcompany = flightcompany;
		}
		public String getFlight_class() {
			return flight_class;
		}
		public void setFlight_class(String flight_class) {
			this.flight_class = flight_class;
		}
	

}
