## firewalld和iptables的关系

>firewalld自身并不具备防火墙的功能，而是和iptables一样需要通过内核的netfilter来实现，也就是说firewalld和iptables一样，他们的作用都是用于维护规则，而真正使用规则干活的是内核的netfilter，只不过firewalld和iptables的结构以及使用方法不一样罢了。

### firewalld的配置模式

>firewalld的配置文件以xml格式为主（主配置文件firewalld.conf例外），他们有两个存储位置

1. /etc/firewalld/ 用户配置文件

2. /usr/lib/firewalld/ 系统配置文件，预置文件

### 安装firewalld，运行、停止、禁用firewalld
>root执行 # yum install firewalld
>启动：# systemctl start firewalld
>查看状态：# systemctl status firewalld 或者 firewall-cmd --state
>停止：# systemctl disable firewalld
>禁用：# systemctl stop firewalld

### 配置firewalld
>查看版本：$ firewall-cmd --version
>查看帮助：$ firewall-cmd --help
>显示状态：$ firewall-cmd --state
>查看区域信息: $ firewall-cmd --get-active-zones
>查看指定接口所属区域：$ firewall-cmd --get-zone-of-interface=eth0
>拒绝所有包：# firewall-cmd --panic-on
>取消拒绝状态：# firewall-cmd --panic-off
>查看是否拒绝：$ firewall-cmd --query-panic
###  Add
>firewall-cmd --permanent --zone=public --add-port=80/tcp

### Remove
》firewall-cmd --permanent --zone=public --remove-port=80/tcp

### Reload
>firewall-cmd --reload

>命令含义：
 
    --zone #作用域
 
    --add-port=80/tcp  #添加端口，格式为：端口/通讯协议
 
    --permanent   #永久生效，没有此参数重启后失效

>我们知道每个zone就是一套规则集，但是有那么多zone，对于一个具体的请求来说应该使用哪个zone（哪套规则）来处理呢？这个问题至关重要，如果这点不弄明白其他的都是空中楼阁，即使规则设置的再好，不知道怎样用、在哪里用也不行
对于一个接受到的请求具体使用哪个zone，firewalld是通过三种方法来判断的：
1、source，也就是源地址 优先级最高
2、interface，接收请求的网卡 优先级第二
3、firewalld.conf中配置的默认zone 优先级最低
这三个的优先级按顺序依次降低，也就是说如果按照source可以找到就不会再按interface去查找，如果前两个都找不到才会使用第三个