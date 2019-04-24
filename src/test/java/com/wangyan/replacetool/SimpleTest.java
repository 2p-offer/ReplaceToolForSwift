package com.wangyan.replacetool;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

/**
 * @Author: 2p
 * @Date: 2019-04-18 15:43
 */
public class SimpleTest {
    public static void main(String[] args) throws IOException {
        String tmppath="/Users/ray/Desktop/tmp/testFile.txt";
        String deskpath="/Users/ray/Desktop/testFile.txt";
        File tmp=new File(tmppath);
        File desk=new File(deskpath);
        if(tmp.exists()&&desk.exists()){
            tmp.delete();
            Files.copy(desk.toPath(),tmp.toPath());
        }else{
            System.out.println("not exist");
        }
    }
}
