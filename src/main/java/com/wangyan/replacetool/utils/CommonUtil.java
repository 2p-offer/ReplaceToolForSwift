package com.wangyan.replacetool.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author: 2p
 * @Date: 2019-04-18 10:30
 */
public class CommonUtil {

    /**
     * 获取子集目录名称及地址
     * @param dir
     * @return
     */
    public static Map<String,String> getChildNames(File dir) {
        Map<String,String> names=new HashMap<>();
        System.out.println("get dir names:");
        for(File name:dir.listFiles()){
            if(".DS_Store".equals(name)){
                continue;
            }
            String path=name.getAbsolutePath().split("swiftSource")[1];
            names.put(name.getName(),path);
        }
        return names;
    }

    public static String getDirPath(String fullPath) {
        String substring = fullPath.substring(fullPath.indexOf("swiftSource"), fullPath.lastIndexOf("/"));
        return substring;
    }

    /**
     * 通过文件名获取文件扩展名
     *
     * @param fileName
     * @return
     */
    public static String getFileType(String fileName) {
        String[] strArray = fileName.split("\\.");
        int suffixIndex = strArray.length - 1;
        String type = strArray[suffixIndex];
        return type;
    }

    /**
     * 更换swift项目中的文件
     * @param files
     * @param tagFile
     * @throws Exception
     */
    public static void  replaceSwiftFile(File files,String tagFile) throws Exception {
        File project=new File(tagFile);
        String profileName;
        if(!project.exists()){
            System.err.println("swift 项目路径错误，提示：最后不要加反斜");
        }
        File tmp;
        for(File file:files.listFiles()){
            profileName=getFileType(file.getName());
            if("swift".equals(profileName)){

                tmp=new File(tagFile+"/"+file.getName());
                if(!tmp.exists()){
                    System.err.println("tmp not exists!!!");
                }
                System.out.println("try to override file :"+tmp.getName());
                tmp.delete();
                Files.copy(file.toPath(),tmp.toPath());
                System.out.println("override file success:"+file.getName());

            }
        }
    }

    /**
     * 替换swift项目中的背景图相关文件
     * @param files
     * @param tagFile
     * @throws Exception
     */
    public static void  replaceBackGroundFile(File files,String tagFile) throws Exception {
        File project=new File(tagFile);
        String profileName;
        if(!project.exists()){
            System.err.println("swift 项目路径错误，提示：最后不要加反斜");
        }
        File tmp;
        for(File file:files.listFiles()){
            profileName=getFileType(file.getName());
            if("swift".equals(profileName)){

                tmp=new File(tagFile+"/"+file.getName());
                if(!tmp.exists()){
                    System.err.println("tmp not exists!!!");
                }
                System.out.println("try to override file :"+tmp.getName());
                tmp.delete();
                Files.copy(file.toPath(),tmp.toPath());
                System.out.println("override file success:"+file.getName());

            }
        }
    }

    /**
     * 从此工具项目中获指定取背景图片  名称，图片地址
     * @param dir
     * @return
     */
    public static Map<String, String> getBackImg(File dir) {

        Map<String,String> names=new HashMap<>();
        System.out.println("get dir names:");
        for(File name:dir.listFiles()){
            StringBuffer res=new StringBuffer();
            if(".DS_Store".equals(name)||name.isFile()){
                continue;
            }
            for(File img:name.listFiles()){
                String imgName = img.getName();
                String filetype=getFileType(imgName);
                if(!("jpg".equals(filetype)||"png".equals(filetype))){
                    continue;
                }
                String path=img.getAbsolutePath().split("swiftSource")[1];
                res.append(path);
                res.append(",");

            }
            String finalStr = res.substring(0, res.lastIndexOf(","));
            names.put(name.getName(),finalStr.toString());
        }

        return names;
    }


    public static void main(String[] args) {
        File dir=new File("/Users/ray/IdeaProjects/test/Replacetool/src/main/resources/static/swiftSource/background");
        Map<String, String> backImg = CommonUtil.getBackImg(dir);
        String s=new String("12");
    }
}
