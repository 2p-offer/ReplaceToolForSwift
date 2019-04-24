package com.wangyan.replacetool.firstTest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: 2p
 * @Date: 2019-04-17 14:09
 */
@Controller
public class FirstTest {

    @GetMapping("/index")
    String index(){
        System.out.println("in。。。。。。。。。。。。。。。。。。。。。");
        return "firstTest/index";
    }




}
