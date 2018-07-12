## 在JDK1.7的新特性方面主要有下面几方面的增强：

1. jdk7语法上

    1. 二进制变量的表示,支持将整数类型用二进制来表示，用0b开头。

    2. Switch语句支持string类型

    3. Try-with-resource语句 

*注意：实现java.lang.AutoCloseable接口的资源都可以放到try中，跟final里面的关闭资源类似； 按照声明逆序关闭资源 ;Try块抛出的异常通过Throwable.getSuppressed获取*

4. Catch多个异常 说明：Catch异常类型为final； 生成Bytecode 会比多个catch小； Rethrow时保持异常类型 

1.5 数字类型的下划线表示 更友好的表示方式，不过要注意下划线添加的一些标准

1.6 泛型实例的创建可以通过类型推断来简化 可以去掉后面new部分的泛型类型，只用<>就可以了

1.7在可变参数方法中传递非具体化参数,改进编译警告和错误

1.8 信息更丰富的回溯追踪 就是上面try中try语句和里面的语句同时抛出异常时，异常栈的信息

2. NIO2的一些新特性
1.java.nio.file 和java.nio.file.attribute包 支持更详细属性，比如权限，所有者 

2.  symbolic and hard links支持 

3. Path访问文件系统，Files支持各种文件操作 

4.高效的访问metadata信息 
5.递归查找文件树，文件扩展搜索 
6.文件系统修改通知机制 

7.File类操作API兼容 

8.文件随机访问增强 mapping a region,locl a region,绝对位置读取 

9. AIO Reactor（基于事件）和Proactor
2.1IO and New IO 监听文件系统变化通知 

通过FileSystems.getDefault().newWatchService()获取watchService，然后将需要监听的path目录注册到这个watchservice中，对于这个目录的文件修改，新增，删除等实践可以配置，然后就自动能监听到响应的事件。

2.2 IO and New IO遍历文件树 ，通过继承SimpleFileVisitor类，实现事件遍历目录树的操作，然后通过Files.walkFileTree(listDir, opts, Integer.MAX_VALUE, walk);这个API来遍历目录树

2.3 AIO异步IO 文件和网络 异步IO在java 

NIO2实现了，都是用AsynchronousFileChannel，AsynchronousSocketChanne等实现，关于同步阻塞IO，同步非阻塞IO，异步阻塞IO和异步非阻塞IO。Java NIO2中就实现了操作系统的异步非阻塞IO。

3. JDBC 4.1

3.1.可以使用try-with-resources自动关闭Connection, ResultSet, 和 Statement资源对象 

3.2. RowSet 1.1：引入RowSetFactory接口和RowSetProvider类，可以创建JDBC driver支持的各种 row sets，这里的rowset实现其实就是将sql语句上的一些操作转为方法的操作，封装了一些功能。

3.3. JDBC-ODBC驱动会在jdk8中删除 

4. 并发工具增强 

4.1.fork-join 

最大的增强，充分利用多核特性，将大问题分解成各个子问题，由多个cpu可以同时解决多个子问题，最后合并结果，继承RecursiveTask，实现compute方法，然后调用fork计算，最后用join合并结果。

4.2.ThreadLocalRandon 并发下随机数生成类，保证并发下的随机数生成的线程安全，实际上就是使用threadlocal 
4.3. phaser 类似cyclebarrier和countdownlatch，不过可以动态添加资源减少资源

5. Networking增强 

新增URLClassLoader close方法，可以及时关闭资源，后续重新加载class文件时不会导致资源被占用或者无法释放问题

URLClassLoader.newInstance(new URL[]{}).close();

新增Sockets Direct Protocol

绕过操作系统的数据拷贝，将数据从一台机器的内存数据通过网络直接传输到另外一台机器的内存中 

6. Multithreaded Custom Class Loaders  

解决并发下加载class可能导致的死锁问题，这个是jdk1.6的一些新版本就解决了，jdk7也做了一些优化。有兴趣可以仔细从官方文档详细了解

JDK1.8的新特性

一、接口的默认方法

Java 8允许我们给接口添加一个非抽象的方法实现，只需要使用 default关键字即可，这个特征又叫做扩展方法。

二、Lambda 表达式

在Java 8 中你就没必要使用这种传统的匿名对象的方式了，Java 8提供了更简洁的语法，lambda表达式：

Collections.sort(names, (String a, String b) -> {

return b.compareTo(a);

});

三、函数式接口

Lambda表达式是如何在java的类型系统中表示的呢？每一个lambda表达式都对应一个类型，通常是接口类型。而“函数式接口”是指仅仅只包含一个抽象方法的接口，每一个该类型的lambda表达式都会被匹配到这个抽象方法。因为 默认方法 不算抽象方法，所以你也可以给你的函数式接口添加默认方法。 

四、方法与构造函数引用

Java 8 允许你使用 :: 关键字来传递方法或者构造函数引用，上面的代码展示了如何引用一个静态方法，我们也可以引用一个对象的方法：

converter = something::startsWith;

String converted = converter.convert("Java");

System.out.println(converted);

五、Lambda 作用域

在lambda表达式中访问外层作用域和老版本的匿名对象中的方式很相似。你可以直接访问标记了final的外层局部变量，或者实例的字段以及静态变量。

六、访问局部变量

可以直接在lambda表达式中访问外层的局部变量：

七、访问对象字段与静态变量 

和本地变量不同的是，lambda内部对于实例的字段以及静态变量是即可读又可写。该行为和匿名对象是一致的：

八、访问接口的默认方法

JDK 1.8 API包含了很多内建的函数式接口，在老Java中常用到的比如Comparator或者Runnable接口，这些接口都增加了@FunctionalInterface注解以便能用在lambda上。

Java 8 API同样还提供了很多全新的函数式接口来让工作更加方便，有一些接口是来自Google Guava库里的，即便你对这些很熟悉了，还是有必要看看这些是如何扩展到lambda上使用的。