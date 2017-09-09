import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import dao.UserDao;
import entity.User;
import org.springframework.boot.CommandLineRunner;

@SpringBootApplication  // 开启组件扫描和自动配置
// mapper 接口类扫描包配置
public class Application {
    public static void main(String[] args) {
        // 程序启动入口， 负责启动引导应用程序
        // 启动嵌入式的 Tomcat 并初始化 Spring 环境及其各 Spring 组件
        SpringApplication.run(Application.class,args);
    }
}
