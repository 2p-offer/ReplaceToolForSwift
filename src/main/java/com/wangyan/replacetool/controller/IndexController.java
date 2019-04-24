package com.wangyan.replacetool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @Author: 2p
 * @Date: 2019-04-19 18:18
 */
@Controller
public class IndexController {

    @GetMapping("/")
    String index(){
        return "index";
    }
}
