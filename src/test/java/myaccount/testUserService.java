package myaccount;


import org.hao.springmvc.dao.UserDao;
import org.hao.springmvc.model.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class testUserService {

	@Autowired
	UserDao userDao;
	
	@Test
	public void test() {
		
		User u = new User();
		u.setUsername("wuhao");
		u.setPassword("12345");
		u.setEmail("hao@newland.com");
		userDao.save(u);
	}

}
