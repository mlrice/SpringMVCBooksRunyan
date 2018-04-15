package edu.dmacc.spring.springmvcbooksrunyan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class BooksAuthorsController {
	@Autowired AuthorDao dao;

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
	
}
