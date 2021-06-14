package com.kedarnath.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "place")
public class PlacesList  implements Serializable{
	
	 private static final long serialVersionUID = 1L;
	   @Id
	   @GeneratedValue(strategy = GenerationType.AUTO)
	   private int place_id;
	   @Column(name = "placename")
	   private String placename;
	   @Column(name = "placetype")
	   private String placetype;
		public int getPlace_id() {
			return place_id;
		}
		public void setPlace_id(int place_id) {
			this.place_id = place_id;
		}
		public String getPlacename() {
			return placename;
		}
		public void setPlacename(String placename) {
			this.placename = placename;
		}
		public String getPlacetype() {
			return placetype;
		}
		public void setPlacetype(String placetype) {
			this.placetype = placetype;
		}
	  
	

}
