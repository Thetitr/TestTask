package org.boklag.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import org.boklag.dao.UserDao;
import org.boklag.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class MainController {

	//Is used for interaction with db
	@Resource(name="userDao")
	private UserDao userDao;

	/**
	 * Shows main page in a JSP page
	 *
	 * @return the name of the JSP page
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String getMain()
	{
		return "mainpage";
	}


	/**
	 * Shows different types of search in a JSP page
	 *
	 * @return the name of the JSP page
	 */
	@RequestMapping(value = "/main/search", method = RequestMethod.GET)
	public String getSearchById()
	{

		return "searchpage";
	}


	/**
	 * Shows result of search by id
	 *
	 * @return the name of the JSP page
	 * @param id transmitted from the form
	 */
	@RequestMapping(value = "/main/search/id", method = RequestMethod.POST)
	public String getSearchById(
			@RequestParam(value = "id", required = true) String id,
			Model model)
	{
		//getting user from db
		Integer intid=Integer.parseInt(id);
		User user=userDao.getById(intid);

		model.addAttribute("user",user);

		return "searchbyidpage";
	}


	/**
	 * Shows result of search by name
	 *
	 * @return the name of the JSP page
	 * @param name transmitted from the form
	 */
	@RequestMapping(value = "/main/search/name", method = RequestMethod.GET)
	public String getSearchByName(
			@RequestParam(value = "name", required = true) String name,
			@RequestParam(value="page", required=true) String page,
			Model model)
	{
		//getting 10 users for displaying
		List<User> users = userDao.getByName(name, Integer.parseInt(page), 10);

		//check for next page for displaying paging buttons in jsp
		List<User> nextPageUsers = userDao.getByName(name,Integer.parseInt(page) + 1, 10);
		model.addAttribute("isNext", nextPageUsers.size()>0);


		model.addAttribute("users",users);
		model.addAttribute("namepattern", name);

		return "searchbynamepage";
	}


	/**
	 * Shows result of search by name
	 *
	 * @return the name of the JSP page
	 * @param admin transmitted from the form
	 */
	@RequestMapping(value = "/main/search/admin", method = RequestMethod.GET)
	public String getSearchByAdmin(
			@RequestParam(value="admin", required=true) String admin,
			@RequestParam(value="page", required=true) String page,
			Model model)
	{
		//getting 10 users for displaying
		List<User> users = userDao.getByAdmin(admin, Integer.parseInt(page), 10);

		//check for next page for displaying paging buttons in jsp
		List<User> nextPageUsers = userDao.getByAdmin(admin, Integer.parseInt(page)+1, 10);
		model.addAttribute("isNext", nextPageUsers.size()>0);


		model.addAttribute("users",users);
		model.addAttribute("admin", admin);


		return "searchbyadminpage";
	}


	/**
	 * Shows result of search by name
	 *
	 * @return the name of the JSP page
	 * @param strfrom transmitted from the form
	 * @param strto transmitted from the form
	 */
	@RequestMapping(value = "/main/search/age", method = RequestMethod.GET)
	public String getSearchByAge(
			@RequestParam(value = "from", required = true) String strfrom,
			@RequestParam(value = "to", required = true) String strto,
			@RequestParam(value="page", required=true) String page,
			Model model)
	{

		Integer from = Integer.parseInt(strfrom);
		Integer to = Integer.parseInt(strto);

		//getting 10 users for displaying
		List<User> users = userDao.getByAge(from, to, Integer.parseInt(page), 10);

		//check for next page for displaying paging buttons in jsp
		List<User> nextPageUsers = userDao.getByAge(from, to, Integer.parseInt(page)+1, 10);
		model.addAttribute("isNext", nextPageUsers.size()>0);

		model.addAttribute("users",users);
		model.addAttribute("from", from);
		model.addAttribute("to", to);


		return "searchbyagepage";
	}

	/**
	 * Shows 10 users on page
	 *
	 * @return the name of the JSP page
	 *
	 */
	@RequestMapping(value = "/main/users", method = RequestMethod.GET)
	public String getUsers(@RequestParam(value="page", required=true) String page, Model model) {

		List<User> users = userDao.getUsers(Integer.parseInt(page), 10);

		//Check for next page for displaying paging buttons in jsp
		List<User> nextPageUsers = userDao.getUsers(Integer.parseInt(page)+1,10);
		model.addAttribute("isNext", nextPageUsers.size()>0);

		model.addAttribute("users", users);


		// This will resolve to /WEB-INF/jsp/userspage.jsp
		return "userspage";
	}


	/**
	 * Retrieves the add page
	 *
	 * @return the name of the JSP page
	 */
	@RequestMapping(value = "/main/users/add", method = RequestMethod.GET)
	public String getAdd( Model model) {

		// Create new User and add to model
		model.addAttribute("userAttribute", new User());

		return "addpage";
	}

	/**
	 * Adds a new user
	 * Displays a confirmation JSP page
	 *
	 * @return  the name of the JSP page
	 */
	@RequestMapping(value = "/main/users/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("userAttribute") User user) {
		user.setCreatedDate(new Date());
		// Call UserDao to do the actual adding
		userDao.add(user);

		return "addedpage";
	}

	/**
	 * Deletes an existing person
	 * Displays a confirmation JSP page
	 *
	 * @return  the name of the JSP page
	 */
	@RequestMapping(value = "/main/users/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="id", required=true) Integer id,
						 Model model) {

		userDao.delete(id);

		// Add id reference to Model
		model.addAttribute("id", id);

		return "deletedpage";
	}

	/**
	 * Retrieves the edit page
	 *
	 * @return the name of the JSP page
	 */
	@RequestMapping(value = "/main/users/edit", method = RequestMethod.GET)
	public String getEdit(@RequestParam(value="id", required=true) Integer id,
						  Model model) {

		// Retrieve existing User and add to model
		model.addAttribute("userAttribute", userDao.getById(id));

		// This will resolve to /WEB-INF/jsp/editpage.jsp
		return "editpage";
	}

	/**
	 * Edits an existing user by delegating the processing to UserDao.
	 * Displays a confirmation JSP page
	 *
	 * @return  the name of the JSP page
	 */
	@RequestMapping(value = "/main/users/edit", method = RequestMethod.POST)
	public String saveEdit(@ModelAttribute("userAttribute") User user,
						   @RequestParam(value="id", required=true) Integer id,
						   Model model) {

		userDao.edit(user);

		// Add id reference to Model
		model.addAttribute("id", id);

		// This will resolve to /WEB-INF/jsp/editedpage.jsp
		return "editedpage";
	}

}
