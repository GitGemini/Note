# Apach 开源组件 DbUtils
## 概述
>DbUtils 封装了对JDBC的操作，简化了使用JDBC的步骤  
>三个核心功能:  
>1.QueryRunner 中提供对sql语句操作的API
>2.ResultSetHandler接口，用于定义select后如何封装结果集
>3.DbUtils 类，一个工具类，定义了关闭资源与事务处理的方法

## QueryRunner 核心类
```java
//执行批量的增删改
int[]	batch(Connection conn, String sql, Object[][] params) 
int[]	batch(String sql, Object[][] params)

//execute 方法
//执行sql语句包括存储过程，不返回任何的结果集
int execute(Connection conn, String sql, Object... params) 
int execute(String sql, Object... params)

//执行sql语句包括存储过程，返回一个或者多个结果集
<T> List<T> execute(String sql, ResultSetHandler<T> rsh, Object... params)
<T> List<T> execute(Connection conn, String sql, ResultSetHandler<T> rsh, Object... params)

//insert 方法
//执行insert方法，没有替代的参数
<T> T insert(Connection conn, String sql, ResultSetHandler<T> rsh)
<T> T insert(String sql, ResultSetHandler<T> rsh)

//执行insert方法，有替代的参数
<T> T insert(Connection conn, String sql, ResultSetHandler<T> rsh, Object... params)
<T> T insert(String sql, ResultSetHandler<T> rsh, Object... params)

//批量插入 insertBatch
<T> T insertBatch(Connection conn, String sql, ResultSetHandler<T> rsh, Object[][] params)
<T> T insertBatch(String sql, ResultSetHandler<T> rsh, Object[][] params)

//Query方法
//执行没有替代参数的查询语句
<T> T query(Connection conn, String sql, ResultSetHandler<T> rsh)
<T> T query(String sql, ResultSetHandler<T> rsh)

//执行有替代参数的查询语句
<T> T query(Connection conn, String sql, ResultSetHandler<T> rsh, Object... params)
<T> T query( String sql, ResultSetHandler<T> rsh, Object... params)

//update
//执行没有替代参数的insert，update，delete 语句
int	update(Connection conn, String sql)
int	update(String sql)

//执行有替代参数的insert，update，delete 语句
//多个参数
int	update(Connection conn, String sql, Object... params)
int	update(String sql, Object... params)
//一个参数
int	update(Connection conn, String sql, Object param)
int	update(String sql, Object param)
```

## ResultSetHandler<T> 接口
```java
//常用的直接实现类
ArrayHandler //将结果集中的第一条记录封装到Object[] 中,数组中的每一个元素就是这条记录中每一个字段的值

ArrayListHandler //将结果集中的每一条记录封装到Object[] 中,将这些数据封装到List集合中

BeanHandler(class) //将结果集中第一条记录封装到一个指定的javaBean中

BeanListHandler(class) //将结果集中每一条记录封装到一个指定的javaBean中，将这些javabean封装到List 集合中

ColumnListHandler //将结果集中指定列的字段值封装到List集合中

ScalarHandler  //用于单个的返回数据,例如select count(*) from tbl

MapHandler  //将结果集中的第一条记录存放到Map集合中
MapListHandler //
```
## DbUtils 类
```java
static void	close(Connection conn)
Close a Connection, avoid closing if null.
static void	close(ResultSet rs)
Close a ResultSet, avoid closing if null.
static void	close(Statement stmt)
Close a Statement, avoid closing if null.
static void	closeQuietly(Connection conn)
Close a Connection, avoid closing if null and hide any SQLExceptions that occur.
static void	closeQuietly(Connection conn, Statement stmt, ResultSet rs)
Close a Connection, Statement and ResultSet.
static void	closeQuietly(ResultSet rs)
Close a ResultSet, avoid closing if null and hide any SQLExceptions that occur.
static void	closeQuietly(Statement stmt)
Close a Statement, avoid closing if null and hide any SQLExceptions that occur.
static void	commitAndClose(Connection conn)
Commits a Connection then closes it, avoid closing if null.
static void	commitAndCloseQuietly(Connection conn)
Commits a Connection then closes it, avoid closing if null and hide any SQLExceptions that occur.
static boolean	loadDriver(ClassLoader classLoader, String driverClassName)
Loads and registers a database driver class.
static boolean	loadDriver(String driverClassName)
Loads and registers a database driver class.
static void	printStackTrace(SQLException e)
Print the stack trace for a SQLException to STDERR.
static void	printStackTrace(SQLException e, PrintWriter pw)
Print the stack trace for a SQLException to a specified PrintWriter.
static void	printWarnings(Connection conn)
Print warnings on a Connection to STDERR.
static void	printWarnings(Connection conn, PrintWriter pw)
Print warnings on a Connection to a specified PrintWriter.
static void	rollback(Connection conn)
Rollback any changes made on the given connection.
static void	rollbackAndClose(Connection conn)
Performs a rollback on the Connection then closes it, avoid closing if null.
static void	rollbackAndCloseQuietly(Connection conn)
Performs a rollback on the Connection then closes it, avoid closing if null and hide any SQLExceptions that occur.
```

