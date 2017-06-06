package dao;

import entity.User;

public interface UserDao {
    public String addUser(User user);

    public User loginUser(User user);

    boolean logupUser(User user);
}
