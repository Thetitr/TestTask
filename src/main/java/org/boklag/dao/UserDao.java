package org.boklag.dao;

import java.util.List;
import javax.annotation.Resource;
import org.boklag.entity.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * DAO for processing Users
 *
 */
@Service("userDao")
@Transactional
public class UserDao {


	//Hibernate factory for creating sessions
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;

	/**
	 * Retrieves all users
	 *
	 * @return a list of users
	 */
	public List<User> getAll() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM  User");
		return  query.list();
	}

	/**
	 * Retrieves users for specific page
	 *
	 * @return a list of users
	 * @param count - number of results for page
	 */
	public List<User> getUsers(Integer page, Integer count) {
		Session session = sessionFactory.getCurrentSession();

		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM  User");

		//Limitation of result for paging
		Integer first=count*page-count;
		query.setFirstResult(first);
		query.setMaxResults(count);

		return  query.list();
	}

	/**
	 * Retrieves user with given id
	 *
	 * @return a user
	 */
	public User getById(Integer id) {
		Session session = sessionFactory.getCurrentSession();

		// Retrieve existing user first
		User user = (User) session.get(User.class, id);
		return user;
	}

	/**
	 * Retrieves users with given name for specific page
	 *
	 * @return a list of users
	 * @param count - number of results for page
	 */
	public List<User> getByName(String name, Integer page, Integer count)
	{
		Session session = sessionFactory.getCurrentSession();


		String statement="from User WHERE name like '%"+name+"%'";
		Query query = session.createQuery(statement);

		//Limitation of result for paging
		Integer first=count*page-count;
		query.setFirstResult(first);
		query.setMaxResults(count);

		return query.list();
	}

	/**
	 * Retrieves users with given interval of age for specific page
	 *
	 * @return a list of users
	 * @param count - number of results for page
	 */
	public List<User> getByAge(Integer from, Integer to, Integer page, Integer count)
	{

		Session session = sessionFactory.getCurrentSession();
		String statement="from User WHERE age between "+from+" and "+to;
		Query query = session.createQuery(statement);

		//Limitation of result for paging
		Integer first=count*page-count;
		query.setFirstResult(first);
		query.setMaxResults(count);

		return query.list();
	}


	/**
	 * Retrieves users with given interval of age for specific page
	 *
	 * @return a list of users
	 * @param count - number of results for page
	 */
	public List<User> getByAdmin(String admin, Integer page, Integer count) {
		Session session = sessionFactory.getCurrentSession();

		String statement="from User WHERE admin="+admin;
		Query query = session.createQuery(statement);

		//Limitation of result for paging
		Integer first=count*page-count;
		query.setFirstResult(first);
		query.setMaxResults(count);

		return query.list();
	}
	/**
	 * Adds a new user
	 */
	public void add(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}

	/**
	 * Deletes an existing person
	 * @param id the id of the existing person
	 */
	public void delete(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		session.delete(user);
	}

	/**
	 * Edits an existing user
	 */
	public void edit(User user) {
		Session session = sessionFactory.getCurrentSession();
		User existingUser = (User) session.get(User.class, user.getId());

		// Assign updated values to this user
		existingUser.setName(user.getName());
		existingUser.setAge(user.getAge());
		existingUser.setAdmin(user.isAdmin());

		session.save(existingUser);
	}

}
