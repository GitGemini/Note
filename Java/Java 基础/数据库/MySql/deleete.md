# 删除数据 delete  
## 特点
1. 允许使用条件，即删除符合条件的数据
    ```sql
    //从teacher表中删除姓名为李**的老师的记录 
    delete from teacher where t_name like '李%';

    //不加条件则是全部删除
    delete from teacher;
    //等价于
    delete from teacehr where 1=1;
    ``` 
2. 允许使用limit,限制删除的记录数
    ```sql
    //删除前三个
    delete from teacher limit 3;
    ``` 
    常见的是limit配合order by来使用
    ```sql
    //从teacher表中删除年龄最大的三位老师
    //只有order by 是没有任何意义的
    delete from teacher order by t_age desc limit 3;
    ```
3. 允许使用join语法，同时删除多个表中的记录
    ```sql
    //删除表one和表two 中id=2 的记录
    delete from one,two using one join two on one.id=two.id where one.id=2;
    ```
    <button onclick='javascript:void(alert("呵呵");)'>haha</button>

4. 清空表truncate
    ```sql
    //清空表的几种方法
    //方法1:不会重置auto_increment 字段,会返回清空的记录数
    delete from teacehr;

    //方法2:会重置anto_increment字段，不会返回清空的记录数
    truncate teacher;
    ```
    >两种清空方法比较：  
    >方法1是一条一条的删除  
    >方法2是直接删除表,在新建一个一模一样的表
    >两种方法都只是清空数据，但保存触发器，存储过程，主键，外键，约束等信息 

    





