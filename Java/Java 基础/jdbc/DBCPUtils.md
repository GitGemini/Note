## DBCPUtils
```java
package com.ph.jdbctest;

import java.io.IOException;
import java.util.Properties;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.commons.dbcp2.BasicDataSourceFactory;

public class DbcpUtils
{
	private static BasicDataSource ds = null;

	private DbcpUtils()
	{
	}

	static
	{
		Properties prop = new Properties();
		try
		{
			prop.load(DbcpUtils.class.getClassLoader().getResourceAsStream("dbcp.properties"));
			ds = BasicDataSourceFactory.createDataSource(prop);
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		// 根据配置文件创建数据库连接池（数据源）
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	public static javax.sql.DataSource getDataSource()
	{
		return ds;
	}
}
```
## 使用连接池
```java
//使用DataSource 后会自动关闭连接
	QueryRunner qr = new QueryRunner(DbcpUtils.getDataSource());
	try 
	{
		String sql = "select * from sort";
		List<Sort> list = qr.query(sql, new BeanListHandler<>(Sort.class));
		for (Sort sort : list)
		{
			System.out.println(sort);
		}
	}
	catch (Exception e) 
	{
		// TODO: handle exception
        throw RuntimeException("Error");
	}//使用DataSource 后会自动关闭连接
```