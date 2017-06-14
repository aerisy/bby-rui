package com.banana.entity;


import javax.persistence.*;

/**
 * Created by Administrator on 2017-6-13.
 */
@Entity
@Table(name = "test_user")
public class User {
    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "tableGenerator")
    @TableGenerator(name = "tableGenerator", initialValue = 0, allocationSize = 1)
    private int ID;
    @Column(name = "name", length = 255)
    private String name;
    @Column(name = "sex", length = 10)
    private String sex;
    @Column(name = "birth", length = 10)
    private String birth;
    @Column(name = "idcard", length = 20)
    private String idcard;
    @Column(name = "telephone", length = 30)
    private String telephone;
    @Column(name = "address", length = 255)
    private String address;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        String toString = "Name:" + this.name == null ? "" : this.name;
        toString += ",Sex:" + this.sex == null ? "" : this.sex;
        toString += ",Sex:" + this.birth == null ? "" : this.birth;
        toString += ",Sex:" + this.idcard == null ? "" : this.idcard;
        toString += ",Sex:" + this.telephone == null ? "" : this.telephone;
        toString += ",Sex:" + this.address == null ? "" : this.address;
        return toString;
    }
}
