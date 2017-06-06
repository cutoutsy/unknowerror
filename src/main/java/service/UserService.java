package service;

import dao.UserDao;
import entity.User;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class UserService {

    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public String addUser(User user){
        return userDao.addUser(user);
    }

    //登录的方法
    public User login(User user){
        //调用dao里面的方法
        return userDao.loginUser(user);
    }

    //注册方法
    public boolean logup(User user){
        return userDao.logupUser(user);
    }
}
