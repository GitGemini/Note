# insert 使用细节
## 基本使用
>
> 1. insert into tab() values();
> 2. insert into tab set t_name='',c_name=''

## 区别
    两种方式都能插入数据，区别在于值列表的语法可以一次性插入多条数据
    1、insert into tab(列1,列2) values
    (值1,值2),(值1,值2),(值1,值2);

## 注意问题
> 插入数据时，如果出现主键冲突，不会插入成功，
但是可以在insert语法内，控制在主键冲突时，改成执行更新操作。
```sql
insert into tab(列1,列2) values(值1,值2) on duplicate key update 列1=值1，列2=值2;
```

>插入的数据源:
>除了使用自定义数据外，
>还可以使用select
>查询到数据，作为插入的数据源
>
```sql
//如从复制
insert into teacher_class select t_name,c_name from teacher_class
```
__也可以来自于其他数据表，要求字段数量和类型一致即可__

## **插入默认值**

``` sql
insert into tbl values(10,'xxx','yyy',default);
insert into tbl values(10,'xxx','yyy',default(days));

当为默认值时,如果不为这个字段设置任何值，默认就为默认值，但是如果这个字段可以为空的话，设置成null就是null

```

## **插入数据的另一个语法replace**
### 对于插入时出现的主键冲突的另一种解决方案
```sql
replace into teacher values(1,'韩非子','01115',10);

```
**<p style='color:chocolate;'>这种语法非常像duplicate，冲突则update，不冲突则insert,语法上与insert也没有什么区别</p>**

## **从outfile/dumpfile导出的文件中导入数据**
*对于菲二进制文件导出使用 outfil*<br/>
*对于二进制文件导出使用dumpfile*
```sql
//导出数据
select into outfile 'd:/temp' from teacher fields terminated by '\,' lines terminated by '\n';

//从导出的文件中导入数据
load data infile 'd:/temp' into table teacher fields terminated by '\,' lines terminated by '\n';
```
<b>注意导入时需要考虑数据增加时,主键是否冲突的问题<br/>
所以一般将主键导出为null</b><br/>
***导入导出时也要注意格式问题***  
**链接**<br/>
this is an [link](http://www.baidu.com);  
**图片**  
![图片](./github.jpg)  
***这就是简单地makedown*** 
### 常用的符号
&gt;&lt;&nbsp;&nbsp;&amp;&copy;\[\] \*\.\_\+\-  
+ sss
+ zzz
+ bbb

1. 111
3. 222
   
|水果类别|价格|
|:----|:----:|
|香蕉|$12|
|香蕉|$12|
|香蕉|$12|
|香蕉|$12|

