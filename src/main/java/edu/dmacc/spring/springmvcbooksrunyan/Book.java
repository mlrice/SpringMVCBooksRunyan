package edu.dmacc.spring.springmvcbooksrunyan;

public class Book {

	private int id;
	private String title;
	private String genre;
	private String yearPublished;
	
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
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getYearPublished() {
		return yearPublished;
	}
	public void setYearPublished(String yearPublished) {
		this.yearPublished = yearPublished;
	}
	
	@Override
	public String toString() {
		return "Books [id=" + id + ", title=" + title + ", genre=" + genre + ", yearPublished=" + yearPublished + "]";
	}
	
}


