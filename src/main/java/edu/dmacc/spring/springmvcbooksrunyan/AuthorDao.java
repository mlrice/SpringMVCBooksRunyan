package edu.dmacc.spring.springmvcbooksrunyan;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;


public class AuthorDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("SpringMVCBooksRunyan");
	
	public void insertAuthor(Author authorToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(authorToAdd);
		em.getTransaction().commit();
		em.close();
	}
	public List<Author> getAllAuthors(){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select a from Author a";
		TypedQuery<Author>typedQuery = em.createQuery(q, Author.class);
		List<Author>all = typedQuery.getResultList();
		return all;
	}


}
