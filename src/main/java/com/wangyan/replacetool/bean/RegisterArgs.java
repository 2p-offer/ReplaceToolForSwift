package com.wangyan.replacetool.bean;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;
import java.util.Map;

/**
 * @Author: 2p
 * @Date: 2019-04-18 09:28
 */

public class RegisterArgs {
    @JSONField(name="id")
    public String id;
    @JSONField(name="user")
    public Map<String,String> user;
    @JSONField(name="password")
    public Map<String,String> password;
    @JSONField(name="mobile")
    public Map<String,String> mobile;
    @JSONField(name="vercode")
    public Map<String,String> vercode;
    @JSONField(name="background")
    public Map<String,String> background;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Map<String, String> getUser() {
        return user;
    }

    public void setUser(Map<String, String> user) {
        this.user = user;
    }

    public Map<String, String> getPassword() {
        return password;
    }

    public void setPassword(Map<String, String> password) {
        this.password = password;
    }

    public Map<String, String> getMobile() {
        return mobile;
    }

    public void setMobile(Map<String, String> mobile) {
        this.mobile = mobile;
    }

    public Map<String, String> getVercode() {
        return vercode;
    }

    public void setVercode(Map<String, String> vercode) {
        this.vercode = vercode;
    }

    public Map<String, String> getBackground() {
        return background;
    }

    public void setBackground(Map<String, String> background) {
        this.background = background;
    }
}
