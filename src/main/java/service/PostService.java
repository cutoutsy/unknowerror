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

    public Post getPostById(String pid) {
        return this.postDao.getPostById(pid);
    }

    public List<Post> getAnswerPostById(String pid) {
        return this.postDao.getAnswerPostById(pid);
    }

    public int getTotalQuestions() {
        return this.postDao.getTotalQuestions();
    }

    public void saveVoteCount(String voidId, int voteCount) {
        this.postDao.saveVoteCount(voidId,voteCount);
    }
}
