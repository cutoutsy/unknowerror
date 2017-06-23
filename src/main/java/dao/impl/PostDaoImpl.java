package dao.impl;

import dao.PostDao;
import entity.Post;
import javafx.geometry.Pos;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class PostDaoImpl extends HibernateDaoSupport implements PostDao{

    public boolean saveQuestion(Post post) {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        hibernateTemplate.save(post);
        return true;
    }

    public List<Post> getNewPosts() {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        return (List<Post>) hibernateTemplate.find("from Post");
    }

    public Post getPostById(String pid) {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        return hibernateTemplate.get(Post.class, Integer.valueOf(pid));
    }
}
