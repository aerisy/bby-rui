package com.banana.dao;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * Created by Administrator on 2017-6-13.
 */
public abstract class AbstractDao<PK extends Serializable, T> {

    private final Class<T> persistentClass;

    @SuppressWarnings("unchecked")
    public AbstractDao() {
        this.persistentClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
    }

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @SuppressWarnings("unchecked")
    public T getByKey(PK key) {
        return (T) getSession().get(persistentClass, key);
    }

    public void persist(T entity) {
        getSession().persist(entity);
    }

    public void delete(T entity) {
        getSession().delete(entity);
    }

    protected Criteria createEntityCriteria() {
        return getSession().createCriteria(persistentClass);
    }

    /**
     * 通过sql查询，结果集直接返回
     *
     * @param sql    查询语句
     * @param params 查询参数
     * @return
     */
    @SuppressWarnings("unchecked")
    public List<Object> querySQL(String sql, Object[] params) {
        Session session = getSession();
        Query q = session.createSQLQuery(sql);
        if (params != null) {
            for (int i = 0; i < params.length; i++) {
                q.setParameter(i, params[i]);
            }
        }
        List<Object> list = q.list();
        return list;
    }

    public List<T> getListBy(String key, String value) {
        //@TODO 通过hql查询，key为查询字段，value为值
        Criteria cri = getSession().createCriteria(persistentClass);
        cri.add(Restrictions.eq(key,value));
        return cri.list();
    }
}
