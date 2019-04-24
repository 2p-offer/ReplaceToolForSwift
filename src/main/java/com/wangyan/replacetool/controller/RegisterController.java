package com.wangyan.replacetool.controller;

import com.alibaba.fastjson.JSONObject;
import com.wangyan.replacetool.bean.RegisterArgs;
import com.wangyan.replacetool.utils.GlobalConfig;
import com.wangyan.replacetool.utils.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.util.Map;

/**
 * @Author: 2p
 * @Date: 2019-04-18 09:33
 */
@RequestMapping("/register")
@Controller
public class RegisterController {

    @Autowired
    GlobalConfig globalConfig;

    public String prevStr = "static/";
    public String relPrevStr = "resources/static/";

    @GetMapping()
    String register() {
        return "register";
    }

    @ResponseBody
    @GetMapping("/getSelectDataList")
    public String getSelectDataList() {
        RegisterArgs registerArgs = new RegisterArgs();
        try {
            String path = ResourceUtils.getURL("classpath:").getPath();

            File file = new File(path, "static/swiftSource/register");

            if ("release".equals(globalConfig.getVersion())) {
                System.out.println("get release select data");
                file = new File(path, "/resources/static/swiftSource/register");
            }
            if (file.exists() && file.isDirectory()) {
                File[] files = file.listFiles();
                for (File dir : files) {
                    String dirName = dir.getName();
                    if (!dir.isDirectory()) {
                        continue;
                    }
                    Map<String, String> names = CommonUtil.getChildNames(dir);
                    switch (dirName) {
                        case "mobile":
                            registerArgs.setMobile(names);
                            break;
                        case "password":
                            registerArgs.setPassword(names);
                            break;
                        case "user":
                            registerArgs.setUser(names);
                            break;
                        case "vercode":
                            registerArgs.setVercode(names);
                            break;
                        case "background":
                            Map<String, String> backImg = CommonUtil.getBackImg(dir);
                            registerArgs.setBackground(backImg);
                            break;
                    }
                }
            } else {
                System.out.println("file not exist:" + file.getPath());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        String res = JSONObject.toJSONString(registerArgs);
        return res;

    }

    @ResponseBody
    @GetMapping("/getBackGroundImgList")
    public String getBackGroundImgList() {
        try {
            String path = ResourceUtils.getURL("classpath:").getPath();


            File file = new File(path, "static/swiftSource/register/background");

            if ("release".equals(globalConfig.getVersion())) {
                System.out.println("get release select data");
                file = new File(path, "/resources/static/swiftSource/background");
            }
            if (file.exists() && file.isDirectory()) {
                File[] files = file.listFiles();
                for (File dir : files) {
                    String dirName = dir.getName();
                    if (!dir.isDirectory()) {
                        continue;
                    }
                    Map<String, String> names = CommonUtil.getBackImg(dir);

                }
            } else {
                System.out.println("file not exist:" + file.getPath());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("", "");
        return jsonObject.toJSONString();

    }


    @PostMapping("/replaceSwift")
    public String replaceSwift(@RequestBody String pathString) {
        JSONObject jsonObject = JSONObject.parseObject(pathString);
        String swiftPath = globalConfig.getSwiftProject();
        File swiftProject = new File(swiftPath);
        if (swiftProject.exists()) {
            System.out.println("swiftProject files:");
            for (File file : swiftProject.listFiles()) {
                System.out.println(file.getName());
            }
        }
        String user = CommonUtil.getDirPath(jsonObject.get("user").toString());
        String pwd = CommonUtil.getDirPath(jsonObject.get("pwd").toString());
        String tel = CommonUtil.getDirPath(jsonObject.get("tel").toString());
        String ver = CommonUtil.getDirPath(jsonObject.get("ver").toString());
        String bg = CommonUtil.getDirPath(jsonObject.get("bg").toString());
        //userdir path：swiftSource/register/user/1
        System.out.println("userdir path：" + user);
        String path = null;
        try {
            ///Users/ray/IdeaProjects/test/Replacetool/target/classes/
            path = ResourceUtils.getURL("classpath:").getPath();

            File userFile = new File(path, prevStr + user);
            File pwdFile = new File(path, prevStr + pwd);
            File telFile = new File(path, prevStr + tel);
            File verFile = new File(path, prevStr + ver);
            File bgFile = new File(path, prevStr + bg);
            if ("release".equals(globalConfig.getVersion())) {
                System.out.println("release version..");
                userFile = new File(path, relPrevStr + user);
                pwdFile = new File(path, relPrevStr + pwd);
                telFile = new File(path, relPrevStr + tel);
                verFile = new File(path, relPrevStr + ver);
                bgFile = new File(path, relPrevStr + bg);
            }
            if (!(userFile.exists() & pwdFile.exists() && telFile.exists() && verFile.exists())) {
                System.err.println("FilePath error!!");
                return "file not found";
            }
            String tagFile = globalConfig.getSwiftProject();
            String bgPro = globalConfig.getBackGroundPath();
            CommonUtil.replaceSwiftFile(userFile, tagFile);
            CommonUtil.replaceSwiftFile(pwdFile, tagFile);
            CommonUtil.replaceSwiftFile(telFile, tagFile);
            CommonUtil.replaceSwiftFile(verFile, tagFile);
            CommonUtil.replaceSwiftFile(bgFile, bgPro);
        } catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        }

        return "ok";
    }


}
