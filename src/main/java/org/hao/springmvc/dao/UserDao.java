package org.hao.springmvc.dao;

import java.util.List;

import org.hao.springmvc.model.User;

public interface UserDao {
	
	User findById(int id);
	
    void save(User user);
     
    void deleteBySSO(String sso);
     
    List<User> findAllUsers();

}
