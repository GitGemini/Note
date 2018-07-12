# 更新数据
## **可以更新数据的方法**
1. replace
    ```sql
    //这种语法非常像duplicate，冲突则update，不冲突则//insert,语法上与insert也没有什么区别
    
    replace into teacher values(1,'韩非子','01115',10);
    ```
2. 加duplicate的insert  
    ```sql
    //冲突则update,不冲突update

    insert into tab(列1,列2) values(值1,值2) on     duplicate key update 列1=值1，列2=值2;
    ```
3. update  
    where
    ```sql
    update tbl set 字段=value,字段=value where 条件
    ```
    order by limit
     ```sql
     //只更新符合条件的前3个
    update tbl set 字段=value,字段=value where 条件
    order by 字段 limit 3;
    ```
   多表更新
     ```sql
    update one join two on one.id=two.id set one.data='x',two.data='y' where one.id=3;
    ```


