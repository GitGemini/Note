## 
>做配置即可
	1. 在tomcat里面 conf/context.xml 里面配置
			对所有的运行在这个服务器的项目生效  
	2. 在conf/Catalina/localhost/context.xml 配置
			对 localhost生效。  localhost:8080
	3. 在自己的web工程项目中的 META-INF/context.xml
			只对当前的工程生效。

```xml
<Context>
    <Manager className="org.apache.catalina.session.PersistentManager" maxIdleSwap="1">
        <Store className="org.apache.catalina.session.FileStore" directory="hena15" />
    </Manager>
</Context>
```
> maxIdleSwap ：超过这个时间就钝化
directory ：  钝化后的那个文件存放的目录位置。 

```xml
<Context  reloadable="true" >
  <Manager className="org.apache.catalina.session.PersistentManager" 
    saveOnRestart="true"
    maxActiveSessions="10"
    minIdleSwap="60"
    maxIdleSwap="1"  //以分钟为单位
    maxIdleBackup="180"
    maxInactiveInterval="300">

    <Store className="org.apache.catalina.session.FileStore" directory="mydir" />

  </Manager>

</Context>
```