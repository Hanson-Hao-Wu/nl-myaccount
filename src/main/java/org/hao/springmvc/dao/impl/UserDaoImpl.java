package org.hao.springmvc.dao.impl;

import java.util.List;

import org.hao.springmvc.dao.AbstractDao;
import org.hao.springmvc.dao.UserDao;
import org.hao.springmvc.model.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoImpl  extends AbstractDao<Integer, User> implements UserDao{

	@Override
	public User findById(int id) {
		User user = getByKey(id);
        return user;
	}


	@Override
	public void save(User user) {
		persist(user);
	}

	@Override
	public void deleteBySSO(String sso) {
		Criteria crit = createEntityCriteria();
        User user = (User)crit.uniqueResult();
        delete(user);
	}

	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("username"));
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<User> users = (List<User>) criteria.list();
         
        // No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
        // Uncomment below lines for eagerly fetching of userProfiles if you want.
        /*
        for(User user : users){
            Hibernate.initialize(user.getUserProfiles());
        }*/
        return users;
	}

}
