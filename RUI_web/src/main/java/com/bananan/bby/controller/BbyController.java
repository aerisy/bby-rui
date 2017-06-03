package com.bananan.bby.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2017/6/3 0003.
 */

@Controller
@RequestMapping(value = "/bby/*")
public class BbyController {

    @RequestMapping(value = "page")
    public String page() {
        return "/views/pageDemo";
    }

    @RequestMapping(value = "message", produces = {"text/plain;charset=UTF-8"})
    @ResponseBody
    public String message() {
        System.out.println("message:");
        return "Hello this is 消息！";
    }
}
