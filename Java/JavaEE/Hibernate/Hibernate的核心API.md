### Hibernate 核心API

#### Configuration 类
>Configuration 类的作用是对Hibernate 进行配置，以及对它进行启动。在Hibernate 的启动过程中，Configuration 类的实例首先定位映射文档的位置，读取这些配置，然后创建一个SessionFactory对象。虽然Configuration 类在整个Hibernate 项目中只扮演着一个很小的角色，但它是启动hibernate 时所遇到的第一个对象。

1. 用来加载核心配置文件和映射文件
    1. 属性文件 hibernate.properties,此时需要手动加载映射文件
        1. Configuration configuration = new Configuration();
		2. configuration.addResource("com/ph/test/Customer.hbm.xml");
    2. XML文件 hibernate.cfg.xml,可以通过mapping 自动加载映射
        1. Configuration configuration = new Configuration().configure();

#### SessionFactory 接口
>SessionFactory接口负责初始化Hibernate。它充当数据存储源的代理，并负责创建Session对象。这里用到了工厂模式。需要注意的是SessionFactory并不是轻量级的，因为一般情况下，一个项目通常只需要一个SessionFactory就够，当需要操作多个数据库时，可以为每个数据库指定一个SessionFactory。

>SessionFactory 内部维护了Hibernate的连接池和二级缓存。是一个线程安全的对象。一般情况下一个项目创建一个即可。

```java
package com.ph.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils
{
	private static final ThreadLocal<Session> sessionLocal = new ThreadLocal<Session>();
	private static final Configuration cfg = new Configuration();
	private static final SessionFactory sf;

	private HibernateUtils()
	{
	}

	static
	{
		cfg.configure();
		sf = cfg.buildSessionFactory();
	}

	public static SessionFactory getSessionFactory()
	{
		return sf;
	}

	public static Session getSession()
	{
		Session session = sessionLocal.get();
		if (session == null || !session.isOpen())
		{
			session = sf.openSession();
			sessionLocal.set(session);// 把session放入本地线程
		}
		return session;
	}

	// 关闭连接
	public static void closeSession()
	{
		Session session = sessionLocal.get();
		if (session != null)
		{
			session.close();
		}
		sessionLocal.remove();
	}
}

```

#### 为什么Hibernate中每一次进行数据库的操纵都需要开启事务?
>当我们在写简单的增删改的时候，发现如果不开启事务，数据就不会向数据库提交这是因为hibernate中的session对象是Connection对象的子类，对Connection的加强，
而我们在看hibernate源码的时候发现Session对象中通过了代理，自动帮我们把setAtuoCommit(false),设置成不自动提交，所有我们在增删改必须开启事务，而且要提交，同时session还对rollback()进行了代理，所以在commit的时候是自动回滚。

#### 为什么用ThreadLocal保存Session 和 Connection?
>由于请求中的一个事务涉及多个 DAO 操作，而这些 DAO 中的 Connection 
不能从连接池中获得，如果是从连接池获得的话，两个 DAO 就用到了两个
Connection，这样的话是没有办法完成一个事务的。
DAO 中的 Connection 如果是从 ThreadLocal 中获得 Connection 的话那
么这些 DAO 就会被纳入到同一个 Connection 之下。当然了，这样的话，
DAO 中就不能把 Connection 给关了，关掉的话，下一个使用者就不能用了。

#### Session 对象,封装了Connection
>Session接口负责执行被持久化对象的CRUD操作(CRUD的任务是完成与数据库的交流，包含了很多常见的SQL语句)。但需要注意的是Session对象是非线程安全的。同时，Hibernate的session不同于JSP应用中的HttpSession。这里当使用session这个术语时，其实指的是Hibernate中的session，而以后会将HttpSession对象称为用户session。线程不安全的，内部维护了Hibernate的一级缓存

##### Session常用API
1. 保存 返回主键
    1. Serializable save(java.lang.Object object)
    2. Serializable	saveOrUpdate(java.lang.Object object)
2. 查询方法
    1. T get(Class c,Serializable id);
    2. T load(Class c,Serializable id);
    3. get和load方法的区别
        1. get方法采用的是立即加载,执行到这行代码的时候,会马上发送语句去查询。查询一个找不到的对象时，返回null

        2. load方法采用的是延迟加载的机制(懒加载),执行到这行代码的时候不会发送语句去查询,当真正使用这个对象的其他属性(除了主键)外才会发送查询语句，去数据库查询数据。查询后返回的是一个代理对象。使用javassist-3.22.0-GA 一个第三方的包来实现动态代理。
3. 修改
    1. update(obj)
4. 删除
    2. delete(obj)
5. 查询所有
    1. createQuery
    2. createSQLQuery
#### Transaction 事务对象
>Transaction 接口是一个可选的API，可以选择不使用这个接口，取而代之的是Hibernate 的设计者自己写的底层事务处理代码。 Transaction 接口是对实际事务实现的一个抽象，这些实现包括JDBC的事务、JTA 中的UserTransaction、甚至可以是CORBA 事务。之所以这样设计是能让开发者能够使用一个统一事务的操作界面，使得自己的项目可以在不同的环境和容器之间方便地移植。
1. session.beginTranscation();
1. commit
2. rollback


