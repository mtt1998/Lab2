package com.bookmanage.model;

public class AuthorModel {
	private int authorId;
	private String name;
	private int age;
	private String country;
	public AuthorModel() {}
	public AuthorModel(int authorId, String name, int age, String country) {
		this.authorId = authorId;
		this.name = name;
		this.age = age;
		this.country = country;
	}
	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}
