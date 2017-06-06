package dao.impl;

import dao.UserDao;
import entity.User;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import utils.PasswordHash;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

    public String addUser(User user) {
//        String success = "";
        getHibernateTemplate().save(user);

        return "success";
    }

    //登录的方法
    public User loginUser(User user) {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        //登录的查询操作
        List<User> list = (List<User>) hibernateTemplate.find("from User where emailHash=?", user.getEmailHash());

        try {
            if((list.size() == 1) && PasswordHash.validatePassword(user.getPassword(), list.get(0).getPassword())) {
                return list.get(0);
            }else{
                return null;
            }
        } catch (InvalidKeySpecException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean logupUser(User user) {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        hibernateTemplate.save(user);
        return true;
    }

}
