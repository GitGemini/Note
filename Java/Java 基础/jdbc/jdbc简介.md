# JDBC
## 简介
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JDBC（Java DataBase Connectivity,java数据库连接）是一种用于执行SQL语句的Java API，可以为多种关系数据库提供统一访问，它由一组用Java语言编写的类和接口组成。  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JDBC提供了一种基准，据此可以构建更高级的工具和接口，使数据库开发人员能够编写数据库应用程序。  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JDBC需要驱动程序，两个设备要进行通讯，需要满足一定的通信数据格式，数据格式由设备提供商规定，设备提供商为设备提供驱动软件，通过软件可以与该设备进行通讯。
## 原理
>JDBC中定义了一些接口：   
1、驱动管理：DriverManager   
2、连接接口：Connection ,DatabasemetaData   
3、语句对象接口   
Statement  
PreparedStatement   
CallableStatement   
4、结果集接口   
ResultSet   
ResultSetMetaData  
不同的数据库厂商实现JDBC的接口为自己数据库的提供一个驱动，以便能够通过java来访问数据库
## 开发步骤
1. 注册驱动  
    ```java
    //使用java.sql.DriverManager 的静态方法 (这个类中都是静态方法)  
    //registerDriver(Driver)
    //Driver 是一个设备借口，具体的实现类由各个数据库厂商实现
   //在MySql的Driver实现类中的静态代码块中已经运行了  
   //DriverManager.registerDriver(new Driver());  
   //所以不需要我们自己去new Driver() 来注册驱动  
   //源码
   public class Driver extends NonRegisteringDriver implements java.sql.Driver
   {
        public Driver() throws SQLException
        {

        }
        static
        {
             try
            {
                DriverManager.registerDriver(new Driver());
            }
            catch (SQLException E)
            {
            throw new RuntimeException("Can't register driver!");
            }
         }
    }
   // 在官方文档里告诉我们
   // * When a Driver class is loaded, it should create an instance of itself and register it with the DriverManager. This means that a user can load and register a driver by doing Class.forName("foo.bah.Driver")
   //我们应该使用Class.forName() 来注册
   Class.forName("com.mysql.cj.jdbc.Driver");//mysql8.0 
   Class.forName("com.mysql.jdbc.Driver");//mysql 8.0以下
    ```
2. 获得连接
    ```java
    //使用DriverManager.getConnection(param) 来获取连接
    //试图建立到给定数据库 URL 的连接。   
    static Connection getConnection(String url) 
    static Connection getConnection(String url, Properties info)
    static Connection getConnection(String url, String user, String password) 
    //三个重载方法获取连接
    //url:jdbc:mysql://ip地址:端口号/数据库名称？参数列表     
    //user:用户名 root
    //password:密码
    // JDBC 驱动名及数据库 URL MySql
	static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/mydatabase?useSSL=false&serverTimezone=UTC";
	
	//SqlServer
	static final String JDBC_DRIVER_MSSQl = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	static final String DB_URL_MSSQl = "jdbc:sqlserver://localhost:1433;" +"databaseName=MyDataBase;integratedSecurity=true;";

    // 数据库的用户名与密码，需要根据自己的设置
	static final String USER = "root";
	static final String PASS = "123456";

    conn = DriverManager.getConnection(DB_URL, USER, PASS);
    ```
3. 获得语句执行平台  Statement 接口的对象
    ```java
    Connection conn= DriverManager.getConnection(DB_URL, USER, PASS);
	Statement stmt = conn.createStatement();
    PrepareStatement ps = conn.prepareStatement(sql);//带参数的是sql语句，通过PrepareStatement中的set***方法传入参数
    CallableStatement cs = conn.prepareCall(sql);//执行存储过程
    ```
4. 执行sql语句  
    ```java
    ResultSet rs = stmt.executeQuery(sql);//查询
    int count = stmt.executeUpdate(sql);//删除，修改，插入
    ``` 
5. 处理结果
    ```java
    while (rs.next())
	{
		System.out.println(rs.getInt(1) +"\t"+rs.getString(2)+"\t"+rs.getBigDecimal(3)+"\t"+rs.getString(4));
	}
    ```
6. 释放资源
    ```java
    rs.close();
    stmt.close();
	conn.close();
    ```
7. 注意要预防sql注入
    ```java
    //SQL 的注入，所以一般不要//SQL 的注入，
    //所以一般不要使用拼接的方式来拼sql语句
    sql = "SELECT * FROM sort where sname='"+"k' or '1'='1"+"'"; 

    //使用预编译的sql语句，PreparedStatement接口的实现类来操作。
    //高效，而且可以预防sql注入
    ```