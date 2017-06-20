package com.banana.service;

import com.banana.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2017-6-13.
 */
public interface UserService {

    void save(User u);

    List<User> getAll();

    User get(int id);
}
