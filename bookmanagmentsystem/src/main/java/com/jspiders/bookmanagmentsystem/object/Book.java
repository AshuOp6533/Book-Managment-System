package com.jspiders.bookmanagmentsystem.object;




public class Book {
    private int id;
    private String name;
    private String author;
    private int pages;
    private double price;
    private String genre;
    private String language;


    public Book(int id, String name, String author, int pages, double price, String genre, String language) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.pages = pages;
        this.price = price;
        this.genre = genre;
        this.language = language;
    }

  
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Override
    public String toString() {
        return "Book [id=" + id + ", name=" + name + ", author=" + author + ", pages=" + pages + ", price=" + price
                + ", genre=" + genre + ", language=" + language + "]";
    }
}
