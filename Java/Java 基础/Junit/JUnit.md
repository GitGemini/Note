# JUnit 单元测试
## 常见的注解
1. @Test
>为要测试的类编写一个测试类，并为要测试的方法编写一个测试方法，然后在测试方法上加@Test注解

2. @Ignore 
>标记为Ignore的测试方法在测试的时候不会执行

3. @Before与@After
>在每个测试方法执行之前先执行被@Before标注的方法，测试方法执行完后在执行被@After标注的方法

4. @BeforeClass与@AfterClass
> 在所有的测试方法运行前先执行被@BeforeClass标注的测试方法，运行完后在执行被@AfterClass标注的测试方法。这两个注解标记的方法必须都是静态的方法。

5. @Test(timeout=100)
>改测试方法必须在100毫秒内执行完且不出错才算成功

6. @Runwith
>其中测试方法就是用@Test注解的一些函数。测试类是包含一个或多个测试方法的一个**Test.java文件，测试集是一个suite，可能包含多个测试类。测试运行器则决定了用什么方式偏好去运行这些测试集/类/方法。
>@Runwith就是放在测试类名之前，用来确定这个类怎么运行的。也可以不标注，会使用默认运行器。
常见的运行器有： 
1.@RunWith(Parameterized.class) 参数化运行器，配合@Parameters使用junit的参数化功能
2.@RunWith(Suite.class)
@SuiteClasses({ATest.class,BTest.class,CTest.class})
3.测试集运行器配合使用测试集功能
@RunWith(JUnit4.class)junit4的默认运行器
4.@RunWith(JUnit38ClassRunner.class)用于兼容junit3.8的运行器
5.一些其它运行器具备更多功能。例如@RunWith(SpringJUnit4ClassRunner.class)集成了spring的一些功能
 
7. @Parameters
 >用于使用参数化功能。
