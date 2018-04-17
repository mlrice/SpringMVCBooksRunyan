package edu.dmacc.spring.springmvcbooksrunyan;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class BooksAuthorsController {
	@Autowired AuthorDao dao;
	@Autowired BookDao bdao;

		private static final String[] titles = {"Diary of a Wimpy Kid", "IT", "The No Asshole Rule",};
		
		@RequestMapping(value="/form")
			public ModelAndView book() {
				ModelAndView modelAndView = new ModelAndView();
				
				modelAndView.setViewName("bookForm");
				modelAndView.addObject("book", new Book());
				modelAndView.addObject("titles", titles);
				return modelAndView;
		}
		
		
	@RequestMapping(value = "/authorForm")
	public ModelAndView author() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("authorForm");
		modelAndView.addObject("author", new Author());
		return modelAndView;
	}
	@RequestMapping(value = "/home")
	public ModelAndView main() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("homePage");

		return modelAndView;
	}
	
	@RequestMapping(value = "/authorResult")
	public ModelAndView procesAuthor(Author author) {
		System.out.println("In ProcessAuthor");
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("Value in getLastname" + author.getLastname());
		dao.insertAuthor(author);
		modelAndView.setViewName("authorResult");
		modelAndView.addObject("a", author);
		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAllAuthors")
	public ModelAndView viewAuthors() {
	ModelAndView modelAndView = new ModelAndView();
	List<Author> allAuthors = dao.getAllAuthors();
	modelAndView.setViewName("viewAllAuthors");
	modelAndView.addObject("all", allAuthors);
	return modelAndView;
	
}
	
	@Bean
		public AuthorDao dao() {
			AuthorDao bean = new AuthorDao();
			return bean;
	}
	
	@RequestMapping(value = "/bookResult")
	public ModelAndView processBook(Book book) {
		System.out.println("In ProcessBook");
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("Value in getTitle" + book.getTitle());
		bdao.insertBook(book);
		modelAndView.setViewName("bookResult");
		modelAndView.addObject("b", book);
		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAllBooks")
	public ModelAndView viewBooks() {
	ModelAndView modelAndView = new ModelAndView();
	List<Book> allBooks = bdao.getAllBooks();
	modelAndView.setViewName("viewAllBooks");
	modelAndView.addObject("all", allBooks);
	return modelAndView;
	
}
	
	@Bean
		public BookDao bdao() {
			BookDao bean = new BookDao();
			return bean;
	}
	
	@RequestMapping(value = "/authorUpdate")
	public ModelAndView authorUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		String act = request.getParameter("doThisToAuthor"); 
		ModelAndView modelAndView = new ModelAndView();
		 if (act.equals("Edit Selected Author")) {
			String getId = request.getParameter("authorId"); 
			System.out.println("id" + getId);
			
			Integer tempId = Integer.parseInt(request.getParameter("authorId"));
			System.out.println("temp id " + tempId);
			Author authorToEdit = dao.searchForAuthorById(tempId);
			request.setAttribute("authorToEdit", authorToEdit);
			
			modelAndView.setViewName("editAuthor");
			modelAndView.addObject("all", authorToEdit);		 
			 
		} else if (act.equals("Delete Selected Author")) {
			String getId = request.getParameter("authorId");
			System.out.println("id" + getId);
			
			Integer tempId = Integer.parseInt(request.getParameter("authorId"));
			Author authorToDelete = dao.searchForAuthorById(tempId);

			dao.deleteAuthor(authorToDelete); 
			 List<Author> allAuthors = dao.getAllAuthors();
			 modelAndView.setViewName("viewAllAuthors");
			 modelAndView.addObject("all", allAuthors);  
		}
		 return modelAndView;
	}

	@RequestMapping(value = "/bookEditResult")
	public ModelAndView processEditBook(Book book) {
		ModelAndView modelAndView = new ModelAndView();
		bdao.editBook(book);
		modelAndView.setViewName("bookResult");
		modelAndView.addObject("b", book);
		return modelAndView;
	}
	
	@RequestMapping(value = "/bookUpdate")
	public ModelAndView bookUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		String act = request.getParameter("doThisToBook"); 
		ModelAndView modelAndView = new ModelAndView();
		 if (act.equals("Edit Selected Book")) {
			String getId = request.getParameter("xid"); 
			System.out.println(getId);
			Integer tempId = Integer.parseInt(request.getParameter("xid"));
			System.out.println("temp id " + tempId);
			Book bookToEdit = bdao.searchForBookById(tempId);
			request.setAttribute("bookToEdit", bookToEdit);
			
			modelAndView.setViewName("editBook");
			modelAndView.addObject("all", bookToEdit);		 
			 
		} else if (act.equals("Delete Selected Book")) {
			String getId = request.getParameter("xid");
			System.out.println("id" + getId);
			
			Integer tempId = Integer.parseInt(request.getParameter("xid"));
			Book bookToDelete = bdao.searchForBookById(tempId);

			bdao.deleteBook(bookToDelete); 
			 List<Book> allBooks = bdao.getAllBooks();
			 modelAndView.setViewName("viewAllBooks");
			 modelAndView.addObject("all", allBooks);  
		}
		 return modelAndView;
	}
	
	
}
