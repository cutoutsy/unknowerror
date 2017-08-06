package dao.impl;

import dao.PostDao;
import entity.Post;
import entity.Tag;
import javafx.geometry.Pos;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;
import java.util.stream.Collectors;

public class PostDaoImpl extends HibernateDaoSupport implements PostDao{

    public boolean saveQuestion(Post post) {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        String[] tags = post.getTags().split(",|，");
        for (String tag : tags){
            Tag tempTag = new Tag();
            tempTag.setTagName(tag);
            List<Tag> tagList = (List<Tag>)hibernateTemplate.find("from Tag where tagName = ?", tag);
            int count = tagList.size() > 0 ? tagList.get(0).getCount()+1 : 1;
            tempTag.setCount(count);
            hibernateTemplate.save(tempTag);
        }
        hibernateTemplate.save(post);
        return true;
    }

    public List<Post> getNewPosts() {
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        List<Post> allPost = (List<Post>) hibernateTemplate.find("from Post order by creationDate desc");
        List<Post> allQuestion = allPost.stream().filter(post -> post.getPostTypeId()==1).collect(Collectors.toList());
        for (Post question : allQuestion){
            question.setAnswerCount(getAnswesCountById(question.getId()));
        }
        return allQuestion;
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

    private int getAnswesCountById(int parentId){
        String hql = "select count(*) from Post as post where parentId = ?";
        return Integer.valueOf(this.getHibernateTemplate().iterate(hql, parentId).next().toString());
    }
}
