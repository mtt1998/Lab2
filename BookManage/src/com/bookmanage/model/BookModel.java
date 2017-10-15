package com.bookmanage.model;

public class BookModel {
	private String isbn;
	private String title;
	private int authorId;
	private String publisher;
	private String publishDate;
	private float price;
	public BookModel() {}
	public BookModel(String isbn, String title, int authorId, String publisher, String publishDate, float price) {
		this.isbn = isbn;
		this.title = title;
		this.authorId = authorId;
		this.publisher = publisher;
		this.publishDate = publishDate;
		this.price = price;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getAuthorId() {
		return authorId;
	}
	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
}
