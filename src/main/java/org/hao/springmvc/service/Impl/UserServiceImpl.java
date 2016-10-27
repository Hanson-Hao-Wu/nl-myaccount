package org.hao.springmvc.service.Impl;

import java.util.List;

import org.hao.springmvc.dao.UserDao;
import org.hao.springmvc.model.User;
import org.hao.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
    private UserDao dao;
	
	@Override
	public User findById(int id) {
		return dao.findById(id);
	}

	@Override
	public void saveUser(User user) {
		dao.save(user);
	}
	
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
	@Override
	public void updateUser(User user) {
		User entity = dao.findById(user.getId());
        if(entity!=null){
        }
	}

	@Override
	public void deleteUserBySSO(String sso) {
		dao.deleteBySSO(sso);
	}

	@Override
	public List<User> findAllUsers() {
		return dao.findAllUsers();
	}

}
