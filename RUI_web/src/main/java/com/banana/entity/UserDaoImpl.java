package com.banana.entity;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017-6-13.
 */
@Repository("UserDao")
public class UserDaoImpl extends AbstractDao<Integer,UserDao> implements UserDao {
    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    public User get(int id) {
        System.out.println("delete");
        return null;
    }

    @Override
    public void save(User u) {
        System.out.println("save");
    }

    @Override
    public void delete(String id) {
        System.out.println("delete");

    }
}
