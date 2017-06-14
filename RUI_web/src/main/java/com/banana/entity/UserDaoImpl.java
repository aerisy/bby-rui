package com.banana.entity;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017-6-13.
 */
@Repository("UserDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {
    @Override
    public List<User> getAll() {
        Criteria c = createEntityCriteria().addOrder(Order.desc("name"));
        c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        List<User> list = c.list();
        return list;
    }

    @Override
    public User get(int id) {
        System.out.println("get - " + id);
        return getByKey(id);
    }

    @Override
    public void save(User u) {
        System.out.println("save - "+u.getName());
        System.out.println("save - "+u.getID());
        System.out.println("save - "+u.getAddress());
        persist(u);
    }

    @Override
    public void delete(int id) {
        System.out.println("delete");
        User u = getByKey(id);
        delete(u);
    }
}
