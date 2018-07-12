## Web服务器
>常见的Web服务器
>1. web Logic WebLogic最早由 WebLogic Inc.开发，后并入BEA 公司，最终BEA公司又并入Oracle公司。
>2. Apach Tomcat 开源
>3. WebSphere  IBM开发的收费的，一般银行用的较多
>4. IIS 微软开发的，用于.net 平台的服务器

## Tomcat 介绍
### 目录结构
1. bin 目录 
包含了一些.bat,sh,jar 文件，用于启动，关闭Tomcat服务器
2. conf
Tomcat的配置文件目录 server.xml,web.xml等
3. lib
Tomcat运行所需要的jar文件
4. logs
存放Tomcat运行时的日志文件
5. temp
临时文件夹
6. webapps
存放MyEclipse发布到Tomcat服务器上的项目
Eclipse发布的项目在wtpwebapps目录下
7. work
一般的jsp文件都会被编译成***Servlet.java 存放在这个目录里

## 发布项目到Tomcat的三种方式
1. 方式一
    将项目直接拷贝到webapps文件夹下
2. 方式二
在conf目录下的server.xml 下加入<Context> 节点，docBase表示项目的根目录，path表示对应的虚拟路径，一定要以"/"开头
```xml
<Host name="localhost"  appBase="webapps" unpackWARs="true" autoDeploy="true">
    <Context docBase="H:\code\Web\jsDom" path="/nk"></Context>
```
3. 方式三  Catalina 引擎名,localhost 主机名
在conf\Catalina\localhost这个目录下建立一个***.xml,写入
```xml
<?xml version="1.0" encoding="utf-8" ?>
<Context docBase="***" ></Context>
```
然后使用localhost:8080/***就可以访问了