package edu.dmacc.spring.springmvcbooksrunyan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BooksAuthorsController {

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
		modelAndView.setViewName("authorform");
		
		return modelAndView;
	}
	@RequestMapping(value = "/home")
	public ModelAndView main() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("homePage");

		return modelAndView;
	}
}
