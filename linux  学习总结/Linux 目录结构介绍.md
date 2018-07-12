## Liunx 目录结构
1. /- 根 Linux 只有这一个根目录
    >每一个文件和目录从根目录开始。
    只有root用户具有该目录下的写权限。请注意，/root是root用户的主目录，这与/.不一样
2. /usr 相当于windows 下的 program files 目录，用来装各种软件
    >包含二进制文件、库文件、文档和二级程序的源代码。
    /usr/bin中包含用户程序的二进制文件。如果你在/bin中找不到用户二进制文件，到/usr/bin目录看看。例如：at、awk、cc、less、scp。
    /usr/sbin中包含系统管理员的二进制文件。如果你在/sbin中找不到系统二进制文件，到/usr/sbin目录看看。例如：atd、cron、sshd、useradd、userdel。
    /usr/lib中包含了/usr/bin和/usr/sbin用到的库。
    /usr/local中包含了从源安装的用户程序。例如，当你从源安装Apache，它会在/usr/local/apache2中。
    
3. /ect 管理Linux中的各种配置文件

4. /root 系统管理员的默认目录

5. /home 其他用户的默认目录
    >所有用户用home目录来存储他们的个人档案。
    例如：/home/john、/home/nikita

6. /bin中 - 用户二进制文件 
    >包含二进制可执行文件。在单用户模式下，你需要使用的常见Linux命令都位于此目录下。例如：ps、ls、ping、grep、cp

7. /sbin目录 - 系统二进制文件
    >就像/bin，/sbin同样也包含二进制可执行文件。
    但是，在这个目录下的linux命令通常由系统管理员使用，对系统进行维护。例如：iptables、reboot、fdisk、ifconfig、swapon命令.

8. /dev - 设备文件
    >包含设备文件。
    这些包括终端设备、USB或连接到系统的任何设备。例如：/dev/tty1、/dev/usbmon0

9. /proc - 进程信息
    >包含系统进程的相关信息。
    这是一个虚拟的文件系统，包含有关正在运行的进程的信息。例如：/proc/{pid}目录中包含的与特定pid相关的信息。
    这是一个虚拟的文件系统，系统资源以文本信息形式存在。例如：/proc/uptime
10. /var - 变量文件
    >var代表变量文件。
    这个目录下可以找到内容可能增长的文件。
    这包括 - 系统日志文件（/var/log）;包和数据库文件（/var/lib）;电子邮件（/var/mail）;打印队列（/var/spool）;锁文件（/var/lock）;多次重新启动需要的临时文件（/var/tmp)
8. /tmp - 临时文件
    >包含系统和用户创建的临时文件。
    当系统重新启动时，这个目录下的文件都将被删除。

11. /boot - 引导加载程序文件
    >包含引导加载程序相关的文件。
    内核的initrd、vmlinux、grub文件位于/boot下。
    例如：initrd.img-2.6.32-24-generic、vmlinuz-2.6.32-24-generic

12. /lib - 系统库
    >包含支持位于/bin和/sbin下的二进制文件的库文件.
    库文件名为 ld*或lib*.so.*
    例如：ld-2.11.1.so，libncurses.so.5.7

