package edu.dmacc.spring.springmvcbooksrunyan;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="books")
public class Book {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String genre;
	private String author;
	private String year_published;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getYear_published() {
		return year_published;
	}
	public void setYear_published(String yearPublished) {
		this.year_published = yearPublished;
	}
	
	@Override
	public String toString() {
		return "Books [id=" + id + ", title=" + title + ", genre=" + genre + ", year_published=" + year_published + "]";
	}
	
}


