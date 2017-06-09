package com.banana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2017/6/i3 0003.
 */

@Controller
@RequestMapping(value = "/")
public class BbyController {

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
        System.out.println("will go to my/"+page);
        return page;
    }


    @RequestMapping(value = "message", produces = {"text/plain;charset=UTF-8"})
    @ResponseBody
    public String message() {
        System.out.println("message:");
        return "Hello this is 消息！";
    }
}
