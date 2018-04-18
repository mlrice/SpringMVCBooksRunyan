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
	public void deleteAuthor(Author authortoDelete) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<Author> typedQuery = em.createQuery(
				"select li from Author li where li.id = :selectedId",
				Author.class);
		typedQuery.setParameter("selectedId", authortoDelete.getId()); 
		typedQuery.setMaxResults(1);
		Author result = typedQuery.getSingleResult();
		System.out.println("TEST - result: " + result);
		em.remove(result);
		em.getTransaction().commit();
		em.close();
	}

	public Author searchForAuthorById(int idToEdit) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		
		Author foundItem =  em.find(Author.class, idToEdit);
		em.close();
		return foundItem; 
	}

	public void editAuthor(Author toEdit) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin(); 
		em.merge(toEdit);
		em.getTransaction().commit();
		em.close();
	}


}
