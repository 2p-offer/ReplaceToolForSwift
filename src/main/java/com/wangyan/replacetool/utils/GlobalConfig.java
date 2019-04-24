package com.wangyan.replacetool.utils;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * @Author: 2p
 * @Date: 2019-04-18 11:49
 */
@Component
@ConfigurationProperties(prefix="biz.path")
public class GlobalConfig {
    public String swiftProject;

    public String backGroundPath;

    public String version;

    //一套背景图片的数量
    public String bgNum;

    public String getSwiftProject() {
        return swiftProject;
    }

    public void setSwiftProject(String swiftProject) {
        this.swiftProject = swiftProject;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getBackGroundPath() {
        return backGroundPath;
    }

    public void setBackGroundPath(String backGroundPath) {
        this.backGroundPath = backGroundPath;
    }

    public String getBgNum() {
        return bgNum;
    }

    public void setBgNum(String bgNum) {
        this.bgNum = bgNum;
    }
}
