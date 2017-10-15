package com.bookmanage.action;


import java.util.*;
import com.opensymphony.xwork2.ActionSupport;
import com.bookmanage.model.*;
import com.bookmanage.service.*;

public class ManageAction extends ActionSupport{
	private String authorName;
	private List<BookModel> authorBooks;
	private String bookId;
	private BookModel myBook = new BookModel();
	private AuthorModel myAuthor = new AuthorModel();
	private String dropIds;
	private AuthorService authorService = new AuthorService();
	private BookService bookService = new BookService();
	
	public String search() {
		authorBooks = bookService.searchBooks(authorService.getIdlist(authorName));
		return SUCCESS;
	}
	
	public String showAllBook() {
		authorBooks = bookService.getAll();
		return SUCCESS;
	}
	
	public String showDetail() {
		myBook = bookService.getById(bookId);
		myAuthor = authorService.getById(myBook.getAuthorId());
		return SUCCESS;
	}
	
	public String delete() {
		bookService.deleteById(bookId);
		return SUCCESS;
	}

	public String deleteList() {
		for(String i : dropIds.split(",")) {
			bookService.deleteById(i);
		}
		return SUCCESS;
	}
	
	public String add() {
		return SUCCESS;
	}
	
	public String addBook() {
		if(bookService.getById(myBook.getIsbn()) != null)
			return "exist";
		if(authorService.getById(myBook.getAuthorId()) == null) {
			System.out.println("no author");
			myAuthor.setAuthorId(myBook.getAuthorId());
			return "no author";
		}
		if(bookService.insert(myBook) != -1)
			return SUCCESS;
		return "fail";
	}
	
	public String addAuthor() {
		System.out.println(myAuthor.getAuthorId());
		if(authorService.getById(myAuthor.getAuthorId()) != null)
			return "exist";
		if(authorService.insert(myAuthor) != -1)
			return SUCCESS;
		return "fail";
	}
	
	public String update() {
		myBook = bookService.getById(bookId);
		return SUCCESS;
	}
	public String updateBook() {
		if(authorService.getById(myBook.getAuthorId()) == null) {	
			myAuthor.setAuthorId(myBook.getAuthorId());
			return "no author";
		}
		if(bookService.update(myBook) != -1) {
			myAuthor = authorService.getById(myBook.getAuthorId());
			return SUCCESS;
		}
		return "fail";
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public AuthorService getAuthorService() {
		return authorService;
	}

	public void setAuthorService(AuthorService authorService) {
		this.authorService = authorService;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public List<BookModel> getAuthorBooks() {
		return authorBooks;
	}

	public void setAuthorBooks(List<BookModel> authorBooks) {
		this.authorBooks = authorBooks;
	}

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public BookModel getMyBook() {
		return myBook;
	}

	public void setMyBook(BookModel myBook) {
		this.myBook = myBook;
	}

	public AuthorModel getMyAuthor() {
		return myAuthor;
	}

	public void setMyAuthor(AuthorModel myAuthor) {
		this.myAuthor = myAuthor;
	}

	public String getDropIds() {
		return dropIds;
	}

	public void setDropIds(String dropIds) {
		this.dropIds = dropIds;
	}
}
