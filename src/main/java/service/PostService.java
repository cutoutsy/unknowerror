package service;

import dao.PostDao;
import entity.Post;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class PostService {

    private PostDao postDao;

    public void setPostDao(PostDao postDao) {
        this.postDao = postDao;
    }

    public boolean saveQuestion(Post post){
        return this.postDao.saveQuestion(post);
    }

    public List<Post> getNewPost() {
        return this.postDao.getNewPosts();
    }
}
