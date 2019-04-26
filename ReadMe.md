##Swfit项目样式更改工具使用说明 V0.3

###1.编辑配置文件
简述：编辑 resources下application.yml文件
####(1)swiftProject：
要更改的swift项目的图片对应的swift文件所在文件夹（磁盘绝对路径）\
eg: swiftProject： /Users/ray/Project/Swift/ThorSDK/ThorSDK/ui/paincode
####(2)version :
a : dev 开发版本，IDE运行时选择 \
b : release 稳定版本，jar包运行方式选择
+ 两者的区别在于静态资源文件的读取。以运行jar包方式启动，务必配置为release版本
####(3)backGroundPath
背景图片对应swift所在文件夹绝对路径 \
eg: /Users/ray/Project/Swift/ThorSDK/ThorSDK/ui/paincode/bgImageCode
###3.添加资源文件
简述：向resources/static/swiftSource 目录下添加对应文件； \
####(1)、 添加register页面备选方案：
a.得到合适的的备选方案图片文件（16px  16px）\
b.png 转svg（在线工具），svg转swift（paintcode工具）\
c.在resources/static/swiftSource/register/下的mobile   password	user	  vercode文件夹下分别新建文件夹，分别存放对应的swift文件，png文件
 + 文件名要与其他文件夹下的文件名完全一致 \
eg:
![文件添加示例](http://note.youdao.com/noteshare?id=89eb936e8c0da97742cc0ae987a83ac2)
