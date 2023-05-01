package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.model.User;
@Repository
@Component
public class UserDao {
	
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void insertUser(User u) {
		this.hibernateTemplate.saveOrUpdate(u);
	}
//	@Transactional
//	public void deleteUser(User u) {
//		this.hibernateTemplate.delete(u);
//	}
//	
//	public User getUserById(int id) {
//		User  u = this.hibernateTemplate.get(User.class, id);
//		return u;
//	}
	
	public List<User> getAllUser(){
		List<User> list = this.hibernateTemplate.loadAll(User.class);
		return list;
	}
}