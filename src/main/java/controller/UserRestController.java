package controller;

import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import service.UserService;

/**
 * Created by cutoutsy on 20/08/2017.
 */
@RestController
@EnableAutoConfiguration
public class UserRestController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/api/user/id", method = RequestMethod.GET)
    public User findOneUser(@PathVariable("id") Long id){
        return userService.findUserById(id);
    }
}
