# Http&Servlet
## Http协议
* 什么是Http协议
>针对网络上的客户端与服务器端在执行http请求的时候要遵循的规范。其实就是规定了客户端在访问服务器端时,要按照一定的格式发送数据，服务器返回数据时也要按照一定的格式返回数据。
* 版本
    1.0 

        请求数据，服务器返回之后，连接断开
    1.1 
    
        请求数据，服务器返回之后，在一定的时间内除非客户端或者服务器关掉，否则连接还会保持着,超出一定的时间后，连接才被释放

## Http请求数据解释 

> 请求的数据里面包含三个部分内容 ： 请求行 、 请求头 、请求体

* 请求行

		POST /examples/servlets/servlet/RequestParamExample HTTP/1.1 

		POST ： 请求方式 ，以post去提交数据
			
		/examples/servlets/servlet/RequestParamExample
		请求的地址路径 ， 就是要访问哪个地方。
	
		HTTP/1.1 协议版本

* 请求头

		Accept: application/x-ms-application, image/jpeg, application/xaml+xml, image/gif, image/pjpeg, application/x-ms-xbap, */*
		Referer: http://localhost:8080/examples/servlets/servlet/RequestParamExample
		Accept-Language: zh-CN
		User-Agent: Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)
		Content-Type: application/x-www-form-urlencoded
		Accept-Encoding: gzip, deflate
		Host: localhost:8080
		Content-Length: 31
		Connection: Keep-Alive
		Cache-Control: no-cache

		Accept: 客户端向服务器端表示，我能支持什么类型的数据。 
		Referer ： 真正请求的地址路径，全路径
		Accept-Language: 支持语言格式
		User-Agent: 用户代理 向服务器表明，当前来访的客户端信息。 
		Content-Type： 提交的数据类型。经过urlencoding编码的form表单的数据
		Accept-Encoding： gzip, deflate ： 压缩算法 。 
		Host ： 主机地址
		Content-Length： 数据长度
		Connection : Keep-Alive 保持连接
		Cache-Control ： 对缓存的操作

* 请求体

>浏览器真正发送给服务器的数据 
	
		发送的数据呈现的是key=value ,如果存在多个数据，那么使用 &

		firstname=zhang&lastname=sansan


## Http响应数据解析

> 请求的数据里面包含三个部分内容 ： 响应行 、 响应头 、响应体

	HTTP/1.1 200 OK
	Server: Apache-Coyote/1.1
	Content-Type: text/html;charset=ISO-8859-1
	Content-Length: 673
	Date: Fri, 17 Feb 2017 02:53:02 GMT

	...这里还有很多数据...

* 响应行
	
		HTTP/1.1 200 OK

		协议版本  

		状态码 

			咱们这次交互到底是什么样结果的一个code. 
		
			200 : 成功，正常处理，得到数据。
	
			403  : for bidden  拒绝
			404 ： Not Found
			500 ： 服务器异常

		OK

			对应前面的状态码  

* 响应头

		Server:  服务器是哪一种类型。  Tomcat
	
		Content-Type ： 服务器返回给客户端你的内容类型

		Content-Length ： 返回的数据长度

		Date ： 通讯的日期，响应的时间		


##Get 和  Post请求区别
* post

		1. 数据是以流的方式写过去，不会在地址栏上面显示。  现在一般提交数据到服务器使用的都是POST
	
		2. 以流的方式写数据，所以数据没有大小限制。

* get

		1. 会在地址栏后面拼接数据，所以有安全隐患。 一般从服务器获取数据，并且客户端也不用提交上面数据的时候，可以使用GET
	
		2. 能够带的数据有限， 1kb大小


###Web资源

在http协议当中，规定了请求和响应双方， 客户端和服务器端。与web相关的资源。 

有两种分类

* 静态资源

	html 、 js、 css

* 动态资源

	servlet/jsp

## Servlet
* 什么是Servlet
>servlet 是运行在 Web 服务器中的小型 Java 程序。servlet 通常通过 HTTP（超文本传输协议）接收和响应来自 Web 客户端的请求。
TOmcat其实是一个Servlet容器。
Servlet通常配合动态资源来使用，当然静态资源也要使用到Servlet,只不过Tomcat里面已经定义好了一个DefaultServlet。
### Servlet 接口
* 该接口中含有以下方法

        void destroy() 
                Called by the servlet container to indicate to a servlet that the servlet is being taken out of service. 
        ServletConfig getServletConfig() 
                Returns a ServletConfig object, which contains initialization and startup parameters for this servlet. 
        String getServletInfo() 
                Returns information about the servlet, such as author, version, and copyright. 
        void init(ServletConfig config) 
                Called by the servlet container to indicate to a servlet that the servlet is being placed into service. 
        void service(ServletRequest req, ServletResponse res) 
                Called by the servlet container to allow the servlet to respond to a request. 
* 自定义Servlet
>要实现此接口，可以编写一个继承 javax.servlet.GenericServlet 的一般 servlet，或者编写一个继承 javax.servlet.http.HttpServlet 的 HTTP servlet。或者直接实现Servlet接口
```java
public class HelloServlet implements Servlet
{

	@Override
	public void destroy()
	{
	}

	@Override
	public ServletConfig getServletConfig()
	{
		return null;
	}

	@Override
	public String getServletInfo()
	{
		return null;
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException
	{
	}

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException
	{
		System.out.println("Hello World");
	}

}

//通用的写法，直接继承自HttpServlet,覆盖doGet和doPost
package com.ph.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/MyServlet.aspx" })
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

```
* 配置Servlet
* 方式一 手动配置
```java
//在web.xml 中配置Servlet
 <servlet>
  	<servlet-name>HelloServlet</servlet-name>
  	<servlet-class>com.ph.servlet.HelloServlet</servlet-class>
	<!--提前初始化Servlet-->
	 <load-on-startup>1</load-on-startup>
	<!-- 配置初始化参数 -->
  	<init-param>
  		<param-name>address</param-name>
  		<param-value>北京</param-value>
  	</init-param>
  </servlet>
  <servlet-mapping>
  	<servlet-name>HelloServlet</servlet-name>
    <!--必须以/开头，表示网站的根目录-->
  	<url-pattern>/HelloServlet.php</url-pattern>
  </servlet-mapping>
```
* 方式二 使用注解配置Servlet
```
@WebServlet(asyncSupported = true, urlPatterns = { "/MyServlet.aspx" },initParams= { 
		@WebInitParam(name = "bookstroe", value = "book1", description = "书")
}) 
```
### Servlet 生命周期
```java
	// 一个Servlet只会初始化一次，
	//初始化后的实例对象会被放入Tomcat的Servlet容器中
	//默认情况下初次访问此Servlet时才会创建Servlet实例
	@Override
	public void init(ServletConfig arg0) throws ServletException
	{
		System.out.println("Hello Servlet init ");
	}

	// 只要来了一个请求就会执行这个方法
	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException
	{
		System.out.println("Hello Servlet server ");
	}

	// 从容器中取出Servlet，执行destroy，并调用垃圾回收器回收
	//当项目被从Tomcat服务器中Remove后，会调用Servlet
	//当Tomcat正常关闭时就会释放所有的Servlet，并回收
	@Override
	public void destroy()
	{
		System.out.println("Hello Servlet destroy ");
	}
```
#### 提前加载Servlet
```xml
<load-on-startup>n</load-on-startup>
当值为0或者大于0时，表示容器在应用启动时就加载这个servlet；
当是一个负数时或者没有指定时，则指示容器在该servlet被选择时才加载。
正数的值越小，启动该servlet的优先级越高
```
### ServletConfig类
1. 获取ServletConfig 
	直接在Servlet实现类中调用getServletConfig() 就可以得到ServletConfig 的一个实例化对象
2. 常用的方法
	1. String getServletName();  获取该Servlet在配置文件中servlet-name 节点的值
	2. Enumeration<String> en = config.getInitParameterNames();
		while(en.hasMoreElements())
		{
			String paramName = en.nextElement();
			System.out.println(paramName+":"+config.getInitParameter(paramName));
		}
	3. ServletContext getServletContext(); 获取ServletContext的实例对象
3. ServletConfig的作用
>可以应用他人所写的Servlet.jar文件,如果这个jar文件需要一些初始化参数，就可以使用ServletConfig来检查是否设置了相应的初始化参数