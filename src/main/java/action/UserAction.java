package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import entity.User;
import org.apache.struts2.ServletActionContext;
import service.UserService;
import utils.PasswordHash;

import javax.servlet.http.HttpServletRequest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Timestamp;

/**
 * User Action Class
 */
public class UserAction extends ActionSupport implements ModelDriven<User> {
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    /**
     * 模型驱动方式
     * 定义并实例化模型实例
     */
    private User user = new User();

    //实现getModel方法，用于获取实例对象
    public User getModel() {
        return user;
    }

    //注册的处理方法
    public String logup() {
        String password = user.getPassword();
        user.setReputation(0);
        user.setUpVotes(0);
        user.setDownVotes(0);
        user.setViews(0);
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        user.setCreateDate(timestamp);
        user.setLastAccessDate(timestamp);
        try {
            user.setPassword(PasswordHash.createHash(password));
        } catch (InvalidKeySpecException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        userService.logup(user);
        return "logup_success";
    }

    //登录处理方法
    public String login() {
        User userExist = userService.login(user);
        if (userExist != null) {
            //使用session保持登录状态
            HttpServletRequest request = ServletActionContext.getRequest();
            request.getSession().setAttribute("user", userExist);
            return "login_success";
        } else {
            return "login_failed";
        }
    }
}
