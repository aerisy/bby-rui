package com.banana.controller;

import com.banana.entity.User;
import com.banana.entity.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2017/6/i3 0003.
 */

@Controller
@RequestMapping(value = "/")
public class BbyController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "page")
    public String page() {
        System.out.println("Hello this is demo page!");
        return "pageDemo";
//        return "main";
    }


    @RequestMapping(value = "my{page}")
    public String myPage(@PathVariable("page") String page) {
        System.out.println(page);
        System.out.println("Hello this is demo page!");
        return page;
    }

    @RequestMapping(value = "my/{page}")
    public String my_Page(@PathVariable("page") String page) {
        System.out.println("will go to my/" + page);
        return page;
    }

    @RequestMapping(value = "add{name}", produces = {"text/plain;charset=UTF-8"})
    @ResponseBody
    public String addUser(@PathVariable("name") String name) {
        System.out.println("addUser:" + name);
        User u = new User();
//        u.setID(123);
        u.setName(name);
        u.setAddress("Xiaofang Dalou 4#108");
        u.setIdcard("610000198909098277");
        u.setSex("male");
        u.setTelephone("18909098872");
        userService.save(u);
        return "Hello this is 消息！";
    }

    @RequestMapping(value = "getall", produces = {"text/plain;charset=UTF-8"})
    @ResponseBody
    public String getAllUser() {
        System.out.println("get all User");
        List<User> list = userService.getAll();
        String out = "";
        if (list == null || list.size() == 0) {
            out = "没有用户！";
        } else {
            for (User u : list) {
                out += u.toString() + "\r\n";
            }
        }
        return out;
    }


    @RequestMapping(value = "message", produces = {"text/plain;charset=UTF-8"})
    @ResponseBody
    public String message() {
        System.out.println("message:");
        return "Hello this is 消息！";
    }
}
