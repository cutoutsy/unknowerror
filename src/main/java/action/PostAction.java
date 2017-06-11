package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import entity.Post;
import entity.User;
import org.apache.struts2.ServletActionContext;
import service.PostService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class PostAction extends ActionSupport implements ModelDriven<Post>{
    private PostService postService;
    private List<Post> newPost = new ArrayList<Post>();

    public List<Post> getNewPost() {
        return newPost;
    }
    public void setPostService(PostService postService) {
        this.postService = postService;
    }

    Post post = new Post();

    public Post getModel() {
        return post;
    }

    public String newQuestion(){
        Timestamp datetime = new Timestamp(System.currentTimeMillis());
        post.setAnswerCount(0);
        post.setCreationDate(datetime);
        post.setScore(0);
        post.setViewCount(0);
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        User loginUser = (User) session.getAttribute("user");
        post.setOwnerUserId(loginUser.getId());
        post.setOwnerDisplayName(loginUser.getDisplayName());
        post.setLastEditorUserId(loginUser.getId());
        post.setLastEditorDisplayName(loginUser.getDisplayName());
        post.setLastEditDate(datetime);
        post.setLastActivityDate(datetime);
        post.setAnswerCount(0);
        post.setCommentCount(0);
        post.setFavoriteCount(0);
        postService.saveQuestion(post);
        return "newQuestion_success";
    }

    //在首页显示最新问题
    public String showNewQuestion(){
        newPost = postService.getNewPost();
        System.out.println("Size:" + newPost.size());
        System.out.println(newPost.get(0).getBody());
        return "showNewQuestion_success";
    }
}
