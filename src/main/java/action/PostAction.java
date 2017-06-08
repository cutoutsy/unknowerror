package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import entity.Post;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class PostAction extends ActionSupport implements ModelDriven<Post>{

    Post post = new Post();

    public Post getModel() {
        return post;
    }

    public String newQuestion(){
        System.out.println(post.getBody()+"====");
        return "newQuestion_success";
    }
}
