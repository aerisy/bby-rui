package com.banana.entity;

import java.util.List;

/**
 * Created by Administrator on 2017-6-13.
 */
public interface UserDao {

    List<User> getAll();

    User get(int id);

    void save(User u);

    void delete(int id);
}
