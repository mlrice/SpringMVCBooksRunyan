package edu.dmacc.spring.springmvcbooksrunyan;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="authors")
public class Author {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String firstname;
	private String lastname;
	private int num_of_publications;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public int getNum_of_publications() {
		return num_of_publications;
	}
	public void setNum_of_publications(int num_of_publications) {
		this.num_of_publications = num_of_publications;
	}
	
	@Override
	public String toString() {
		return "Authors [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", num_of_publications="
				+ num_of_publications + "]";
	}

}
