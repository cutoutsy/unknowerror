package dao.impl;

import dao.PostDao;
import entity.Post;
import javafx.geometry.Pos;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;
import java.util.stream.Collectors;

public class PostDaoImpl extends HibernateDaoSupport implements PostDao{

    public boolean saveQuestion(Post post) {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        hibernateTemplate.save(post);
        return true;
    }

    public List<Post> getNewPosts() {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        List<Post> allPost = (List<Post>) hibernateTemplate.find("from Post order by creationDate desc");
        return allPost.stream().filter(post -> post.getPostTypeId()==1).collect(Collectors.toList());
    }

    public Post getPostById(String pid) {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        return hibernateTemplate.get(Post.class, Integer.valueOf(pid));
    }

    @Override
    public List<Post> getAnswerPostById(String pid) {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        return (List<Post>) hibernateTemplate.find("from Post p where p.parentId = ?" , Integer.valueOf(pid));
    }

    @Override
    public int getTotalQuestions() {
        String hql = "select count(*) from Post as post where postTypeId = ?";
        return Integer.valueOf(this.getHibernateTemplate().iterate(hql, 1).next().toString());
    }
}
