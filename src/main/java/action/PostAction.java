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
    private Post onePost;
    private List<Post> newPost = new ArrayList<Post>();
    private List<Post> answers = new ArrayList<Post>();

    public List<Post> getNewPost() {
        return newPost;
    }
    public List<Post> getAnswers() {
        return answers;
    }
    public void setPostService(PostService postService) {
        this.postService = postService;
    }

    public Post getOnePost() {
        return onePost;
    }

    Post post = new Post();

    public Post getModel() {
        return post;
    }

    public String newQuestion(){
        String reStr = "";
        Timestamp datetime = new Timestamp(System.currentTimeMillis());
        post.setAnswerCount(0);
        post.setCreationDate(datetime);
        post.setScore(0);
        post.setViewCount(0);
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        User loginUser = (User) session.getAttribute("user");
        String pid = request.getParameter("pid");
        if(pid != null && pid.length() > 0){
            post.setParentId(Integer.valueOf(pid));
            reStr = "newAnswer_success";
        }else{
            reStr = "newQuestion_success";
        }
        post.setOwnerUserId(loginUser.getId());
        post.setOwnerDisplayName(loginUser.getDisplayName());
        post.setLastEditorUserId(loginUser.getId());
        post.setLastEditorDisplayName(loginUser.getDisplayName());
        post.setLastEditDate(datetime);
        post.setLastActivityDate(datetime);
        post.setCommentCount(0);
        post.setFavoriteCount(0);
        postService.saveQuestion(post);
        return reStr;
    }

    //在首页显示最新问题
    public String showNewQuestion(){
        newPost = postService.getNewPost();
        return "showNewQuestion_success";
    }

    //显示单个问题
    public String showOneQuestion(){
        HttpServletRequest request = ServletActionContext.getRequest();
        String pid = request.getParameter("pid");
        onePost = postService.getPostById(pid);
        answers = postService.getAnswerPostById(pid);
        return "showOneQuestion_success";
    }

}
