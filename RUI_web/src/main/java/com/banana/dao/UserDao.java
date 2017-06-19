package com.banana.dao;

import com.banana.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2017-6-13.
 */
public interface UserDao {

    List<User> getAll();

    List<User> getBy(String key, String value);

    User get(int id);

    void save(User u);

    void delete(int id);
}
