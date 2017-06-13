package com.banana.entity;

import java.util.List;

/**
 * Created by Administrator on 2017-6-13.
 */
public interface UserService {
    void save(User u);

    List<User> getAll();
}
