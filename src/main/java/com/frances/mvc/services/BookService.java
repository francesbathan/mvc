package com.frances.mvc.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import com.frances.mvc.models.Book;
import com.frances.mvc.repositories.BookRepository;
import org.springframework.stereotype.Service;

@Service
public class BookService {
    // adding the book repository as a dependency
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    //updates a book
   
    public Book updateBook(Book b) {
    	return bookRepository.save(b);
    }
    
    public Book updateBook(Long id, String title, String desc, String lang, Integer numOfPages) {
    	Optional <Book> editBook = bookRepository.findById(id);
    	if(editBook != null) {
    		editBook.get().setTitle(title);
    		editBook.get().setDescription(desc);
    		editBook.get().setLanguage(lang);
    		editBook.get().setNumberOfPages(numOfPages);

    		return editBook.get();
    	}
    	return null;        
    }
  
    
    // deletes a book
    public void deleteBook(Long id) {
    	bookRepository.deleteById(id);
    }

    
}