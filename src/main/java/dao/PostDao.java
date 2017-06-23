package dao;

import entity.Post;

import java.util.List;

public interface PostDao {

    public boolean saveQuestion(Post post);

    List<Post> getNewPosts();

    Post getPostById(String pid);
}
