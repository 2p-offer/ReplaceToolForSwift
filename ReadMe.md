## Swfit项目样式更改工具使用说明 V0.3

### 1.编辑配置文件
简述：编辑 resources下application.yml文件


#### (1)swiftProject：
要更改的swift项目的图片对应的swift文件所在文件夹（磁盘绝对路径）  \
eg: swiftProject： /Users/ray/Project/Swift/ThorSDK/ThorSDK/ui/paincode


#### (2)version :
a : dev 开发版本，IDE运行时选择   \
b : release 稳定版本，jar包运行方式选择
+ 两者的区别在于静态资源文件的读取。以运行jar包方式启动，务必配置为release版本


#### (3)backGroundPath
背景图片对应swift所在文件夹绝对路径   \
eg: /Users/ray/Project/Swift/ThorSDK/ThorSDK/ui/paincode/bgImageCode


### 2.添加资源文件
简述：向resources/static/swiftSource 目录下添加对应文件；   \


#### (1)、 添加register页面备选方案：
a.得到合适的的备选方案图片文件（16px  16px）  \
b.png 转svg（在线工具），svg转swift（paintcode工具）  \
c.在resources/static/swiftSource/register/下的mobile   password	user	  vercode文件夹下分别新建文件夹，分别存放对应的swift文件，png文件
 + 文件名要与其他文件夹下的文件名完全一致   \
eg: \
![文件添加示例](https://raw.githubusercontent.com/2p-offer/ReplaceToolForSwift/master/MdHelpImg/fileName.png)


#### (2)添加背景图片预选方案:
a.选择合适的图片十张（仅限jpg，png格式。168*300 px左右即可）   \
b.同上，生成对应swift文件（以“Bg_0  ～  Bg_9”依次命名，固定十个。）  \
c.拷贝图片原文件一份，大小为656*1168px 左右（页面预展示用）\
d. 在resources/static/swiftSource/register/下的background文件夹下新建文件夹，存放新方案的swift文件、图片文件（656*1168大小的）  \
### 3.执行jar文件
终端进入解压后的文件夹下，执行命令 
````
java -jar -Dloader.path=.,resources,lib replacetool-0.0.1-SNAPSHOT.jar
````


### 4.访问管理页
终端执行命令无异常后   \
访问application.yml下配置的server.port 端口+对应资源路径（端口冲突请自行更改server.port 的值）  \ 
eg：localhost：7799/register;   \
也可以直接访问端口下跟路径，进入管理主页。点击对应按钮跳至管理页（请忽略UI。）


### 5.预览
(1）修改右侧下拉框的值，点击预览按钮可在左侧大致预览项目展示效果   \
(2）点击其他蓝色按钮，可预览其余页面的效果。 
+ 预览结果仅供参考，具体请查看 sdk格式更换后的运行效果


### 6.生成
 符合期望后，点击生成，确认后。将替换swift项目内视图的格式。  \
 
 
### 备注：
+ 1.第 3 步，非必须步骤；
+ 2.全局，保证swift文件所在文件夹下，没有无用的swift文件； 
+ 3.页面预览的稳定性有待提高，遇到问题，请F5刷新后重试； 
+ 4.sdk样式更改，以预览页样式为准，和下拉框选择无关。 
+ 5.工具容灾较差，请严格按照此文件说明使用，所有异常均以控制台输出，请规范使用方式后，重启服务，再次尝试；
+ 6.样式更改前，注意源码备份！！ 

<div style="text-align: right">Editor ：	wangyan	</div>
<div style="text-align: right">邮  箱：   yan.wang@rayjoy.com</div>

                                                                                                													
                                                                                                													
                                                                                                

