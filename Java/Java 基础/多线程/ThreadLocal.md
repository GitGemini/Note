# 线程范围内的共享数据
****
## 概念
>每个数据都是与线程有关的，不同的线程中数据是不一样的
模拟原理
```java
package com.ph.timertest;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class ThreadScopeShareData
{
	private static int data=0;
    //使用map保存每个线程的特有变量
	private static Map<Thread,Integer> threadData = new HashMap<>();
	
	public static void main(String[] args)
	{
		for (int i = 0; i < 2; i++)
		{
			new Thread(new Runnable()
			{
				
				@Override
				public void run()
				{
					int data = new Random().nextInt();
					System.out.println(Thread.currentThread().getName()+" has put a data:"+data);
					threadData.put(Thread.currentThread(), data);
					new A().get();
					new B().get();
				}
			}).start();
		}
	}
	
	static class A
	{
		public int get()
		{
			data=threadData.get(Thread.currentThread());
			System.out.println("A from "+Thread.currentThread().getName()+"get data:"+data);
			return data;
		}
	}
	
	static class B
	{
		public int get()
		{
			data=threadData.get(Thread.currentThread());
			System.out.println("B from "+Thread.currentThread().getName()+"get data:"+data);
			return data;
		}
	}
}
```

## 使用ThreadLocal来改写上面的过程
```java
package com.ph.timertest;

import java.util.Random;

public class ThreadLocalTest
{
	private static ThreadLocal<Integer> x = new ThreadLocal<>();
	public static void main(String[] args)
	{
		for (int i = 0; i < 2; i++)
		{
			new Thread(new Runnable()
			{
				
				@Override
				public void run()
				{
					int data = new Random().nextInt();
					System.out.println(Thread.currentThread().getName()+" has put a data:"+data);
					x.set(data);
					new A().get();
					new B().get();
				}
			}).start();
		}
	}
	
	static class A
	{
		public int get()
		{
			int data=x.get();
			System.out.println("A from "+Thread.currentThread().getName()+"get data:"+data);
			return data;
		}
	}
	
	static class B
	{
		public int get()
		{
			int data=x.get();
			System.out.println("B from "+Thread.currentThread().getName()+"get data:"+data);
			return data;
		}
	}

}

```
## 总结
>1.一个ThreadLocal代表一个变量，故其中只能放一个数据。如果有多个数据则需要多个ThreadLocal或者将这些数据封装带一个实体类中
>2.每个线程都保持对其线程局部变量副本的隐式引用，只要线程是活动的并且 ThreadLocal 实例是可访问的；在线程消失之后，其线程局部实例的所有副本都会被垃圾回收（除非存在对这些副本的其他引用）。 
>自动回收的原理:Thread


## 隐藏ThreadLocal的细节
```java
class MyThreadScopeData
{
	private int age;
	private String name;
	
	private static MyThreadScopeData instance = null;
	private static ThreadLocal<MyThreadScopeData> threadData= new ThreadLocal<>();
	private MyThreadScopeData() {}
	
	public static MyThreadScopeData getInstance()
	{
		instance=threadData.get();
		if(instance==null)
		{
			instance=new MyThreadScopeData();
			threadData.set(instance);
		}
		return threadData.get();
	}
	
	public int getAge()
	{
		return age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
}
```