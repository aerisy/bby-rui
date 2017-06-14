package com.banana.entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Administrator on 2017-6-13.
 */
@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao dao;

    @Override
    public void save(User u) {
        dao.save(u);
    }

    @Override
    public List<User> getAll() {
        return dao.getAll();
    }
}