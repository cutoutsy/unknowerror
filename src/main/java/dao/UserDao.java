package dao;

import entity.User;

public interface UserDao {

    public User loginUser(User user);

    boolean logupUser(User user);
}
