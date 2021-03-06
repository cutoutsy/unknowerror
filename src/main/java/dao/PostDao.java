package dao;

import entity.Post;

import java.util.List;

public interface PostDao {

    public boolean saveQuestion(Post post);

    List<Post> getNewPosts();

    Post getPostById(String pid);

    List<Post> getAnswerPostById(String pid);

    int getTotalQuestions();

    void saveVoteCount(String voidId, int voteCount);
}
