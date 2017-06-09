package dao.impl;

import dao.PostDao;
import entity.Post;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class PostDaoImpl extends HibernateDaoSupport implements PostDao{

    public boolean saveQuestion(Post post) {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        hibernateTemplate.save(post);
        return true;
    }
}
