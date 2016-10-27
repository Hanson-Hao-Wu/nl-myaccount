package org.hao.springmvc.service;

import java.util.List;

import org.hao.springmvc.model.User;

public interface UserService {

	User findById(int id);
     
    void saveUser(User user);
     
    void updateUser(User user);
     
    void deleteUserBySSO(String sso);
 
    List<User> findAllUsers(); 
}
