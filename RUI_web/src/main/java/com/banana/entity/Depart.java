package com.banana.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Administrator on 2017-6-19.
 */
@Entity
@Table(name = "basic_depart")
public class Depart {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String ID;
    private String name;
    private String desc;

    //父ID
    private String pid;

}
