# MySql 编程
## 语句结束符
1. 通用的语句结束符是;
2. 在mysql 命令行中 可以使用\g或者\G 来表示结束符，二者在结果显示上有所差别
## 注释
1. 单行注释 使用#或者 --\s (--加一个空格)
2. 块注释 /**/
## 变量
1. 字段名就是变量，系统自定义了很多变量，可以使用show variables 来查看
2. 自定义变量  
    * 定义变量 
        >set @变量名=变量值;  //会话变量
        >为了区分系统变量和自定义变量需要在变量名前加@
        通过select可以获取当前变量的值 select @变量    
        >还可以在定义变量的时候赋值 select 10,15,20 into @a,@b,@c;  
        >_<font color='red'>注意：select into @var 只能返回一行，如果返回多行，会出现语法错误或者只将最后一行的数据注入到变量内,只有全局变量才需要用@</font>_  
        比如SELECT @k:=stu_name FROM student WHERE stu_id>3;  
        SELECT @k;
    * 在复合语句中定义变量
        >declare 变量名 变量类型 defalut value;  
        mysql中的DECLARE语句是在复合语句中声明变量的指令。  
        在过程中定义的变量并不是真正的定义，你只是在BEGIN/END块内定义了而已（译注：也就是形参）。注意这些变量和会话变量不一样，不能使用修饰符@你必须清楚的在BEGIN/END块中声明变量和它们的类型。变量一旦声明，你就能在任何能使用会话变量、文字、列名的地方使用。 在过程中定义的变量并不是真正的定义，你只是在BEGIN/END块内定义了而已（译注：也就是形参）。注意这些变量和会话变量不一样，不能使用修饰符@你必须清楚的在BEGIN/END块中声明变量和它们的类型。变量一旦声明，你就能在任何能使用会话变量、文字、列名的地方使用。 
    *  变量赋值
        >select @val='ss'; 这条语句会判断val=='ss'，等于返回1，不等于返回0  
        >赋值的话，应该这样写 select @val:='ss';  
        > <p style="color:red;">注意:使用set为变赋值的时候可以使用=或者:=,而在select中就只能使用:=或者into来赋值</p>
    * 作用域
        >除了在函数中定义的变量是局部的，只能在定义的函数中用，在外面定义的都是全局的
    * 有效期
        >有效期持续到本次连接结束(会话结束)
## 控制流程
1. 分支  
    * if语句
        ```sql
        if condition then  
        ...  
        [elseif condition then]  
            ...  
        [else]  
            ...  
        end if  

        //例子
        SET GLOBAL log_bin_trust_function_creators=TRUE;
        DROP FUNCTION IF EXISTS test_if;  
        DELIMITER // -- 分界符  
        CREATE FUNCTION test_if(X INT) RETURNS  VARCHAR(20)
        BEGIN  
            IF X=1 THEN  
                RETURN 'OK';  
            ELSEIF X=0 THEN  
                RETURN 'No';  
            ELSE   
                RETURN 'good';  
            END IF;  
        END  
        //  
        DELIMITER ;  
        SET GLOBAL log_bin_trust_function_creators=FALSE;   
        ```
    * case 语句
        ```sql
        //表现形式1 switch...case..
        case value  
        when value then ...  
        [when value then...]  
        [else...]  
        end case  

        //表现形式2: value 可以是逻辑表达式
        case   
        when value then...  -- 此处的value可以为一个条件condition  
        [when value then...]  
        [else...]  
        end case

        //例子
        drop procedure if exists test_case;  
        delimiter //  
        create procedure test_case(in x int)  
        begin  
        case x  
        when 1 then select 'OK';  
        when 0 then select 'No';  
        else select 'good';  
        end case;  
        end  
        //  
        delimiter ;  
        call test_case(9);  
        ```
2. 循环
    * while 循环
        ```sql
        while condition do  
        ...  
        end while 

        //例子
        DROP PROCEDURE IF EXISTS test_while;  
        DELIMITER //  
        CREATE PROCEDURE test_while(OUT SUM INT)  
        BEGIN  
        DECLARE i INT DEFAULT 1;  
        DECLARE s INT DEFAULT 0;  
        WHILE i<=10 DO  
        SET s = s+i;  
        SET i = i+1;  
        END WHILE;  
        SET SUM = s;  
        END;  
        //  
        DELIMITER ;  
        CALL test_while(@s);  
        SELECT @s;
        ```
    * loop 循环该循环没有内置循环条件，但可以通过leave 语句退出循环。表示形式如下：
        ```sql
        loop  
        ...  
        end loop 

        //例子
        drop procedure if exists test_loop;  
        delimiter //  
        create procedure test_loop(out sum int)  
        begin  
        declare i int default 1;  
        declare s int default 0;  
        loop_label:loop  
        set s = s+i;  
        set i = i+1;  
        if i>10 then leave loop_label;  
        end if;  
        end loop;  
        set sum = s;  
        end;  
        //  
        delimiter ;  
        call test_loop(@s);  
        select @s;  
        ```
    * repeat 循环 该语句执行一次循环体，之后判断condition条件是否为真，为真则退出循环，否则继续执行循环体
        ```sql
        repeat  
        ...  
        until condition  
        end repeat  

        //例子
        drop procedure if exists test_repeat;  
        delimiter //  
        create procedure test_repeat(out sum int)  
        begin  
        declare i int default 1;  
        declare s int default 0;  
        repeat  
        set s = s+i;  
        set i = i+1;  
        until i>10 -- 此处不能有分号  
        end repeat;  
        set sum = s;  
        end;  
        //  
        delimiter ;  
        call test_repeat(@s);  
        select @s; 
        ```
    * 类似break与continue 的 leave 和 iterate
        ```sql
        //break continue
        DROP PROCEDURE IF EXISTS test_while;  
        DELIMITER //  
        CREATE PROCEDURE test_while(OUT SUM INT)  
        BEGIN  
            DECLARE i INT DEFAULT 1;  
            DECLARE s INT DEFAULT 0;  
            w:WHILE i<=10 DO  
                SET s = s+i;  
                SET i = i+1; 
                IF  i=5 THEN 
                    LEAVE w;#break;
                END IF;
            END WHILE w;  
            SET SUM = s;  
        END;  
        //  
        DELIMITER ;

        CALL test_while(@s);
        SELECT @s;#10

        //continue
        DELIMITER $$

        USE `mydatabase`$$

        DROP PROCEDURE IF EXISTS `test_while`$$

        CREATE DEFINER=`root`@`%` PROCEDURE `test_while`(OUT SUM INT)
        BEGIN  
            DECLARE i INT DEFAULT 1;  
            DECLARE s INT DEFAULT 0;  
            w:WHILE i<=10 DO  
                IF  i=5 THEN 
                    SET i = i+1; 
                    ITERATE w;#contunue;
                END IF;
                SET s = s+i;  
                SET i = i+1; 
            END WHILE w;  
            SET SUM = s;  
        END$$

        DELIMITER ;
        ```
## 函数
1. 内置函数(只列举一部分)
    * 数值处理函数
        >abs(x) 绝对值 abs(-10.9) 返回10  
        format(x,d) 格式化小数位数 format(1234567.456,2) 返回123456.46  
        ceil(x) 向上取整ceil(10.1) 返回11  
        floor(x) 向下取整floor(10.1) 返回10   
        round(x) 四舍五入取整 round(1.2) 返回1  
        Mod(x,y) ==> x%y  
        Pi()  ==>π 返回圆周率  
        pow(m,n)==>m^n  
        sqrt(x)==>开方  
        rand()==> 随机数 0-1之间的随机数,floor(5+rand()*5) 返回5-10 之间的随机数
        truncate(x,d)==>截取d位小数TRUNCATE(123.348,2)=>123.34
    * 字符串处理函数(MySql中字符串下标从1开始)
        >LENGTH (string )   //string长度，字节  
        CHAR_LENGTH(string)    //string的字符个数  
        SUBSTRING (str , position [,length ]) //从str的position开始,取length个字符  
        REPLACE (str ,search_str ,replace_str) //在str中用replace_str替换search_str  
        INSTR (string ,substring )  //返回substring首次在string中出现的位置  
        CONCAT (string [,... ])   //连接字串 
        CHARSET(str)  //返回字串字符集  
        LCASE (string )  //转换成小写  
        UCASE (string )  //转换成大写  
        LEFT (string ,length )   //从string2中的左边起取length个字符  
        LOAD_FILE (file_name )   //从文件读取内容  
        LOCATE (substring , string [,start_position ] )   //同INSTR,但可指定开始位置  
        LPAD (string ,length ,pad )   //重复用pad加在string开头,直到字串长度为length  
        LTRIM (string )  //去除前端空格  
        REPEAT (string ,count )   //重复count次  
        RPAD (string ,length ,pad)   //在str后用pad补充,直到长度为length  
        RTRIM (string )   //去除后端空格  
        STRCMP (string1 ,string2 )   //逐字符比较两字串大小  
    * 日期时间处理函数
        >now() 获取当前时间 2018-05-12 14:58:06  
        >UNIX_TIMESTAMP() 时间戳1526108286
        >from_unixtimestamp(1526108286) =>2018-05-12 14:58:06  
        >DATE_FORMAT(NOW(),"%Y/%m/%d %H:%i:%s")==>2018/05/12 15:10:50  
        >CURRENT_TIME()==>15:10:50   
        >DATE(NOW());==>2018-05-12
        >Time(NOW());==>15:10:50  
        >DATEDIFF(expr1,expr2):返回相差的天数  
        >TIMEDIFF(expr1,expr2)：返回相隔的时间  
        >ADDTIME(expr1,expr2) 增加时间 ADDTIME('2007-12-31 23:59:59.999999', '1 1:1:1.000002');==>'2008-01-02 01:01:01.000001'  
        >SUBTIME(expr1,expr2)减时间  
        >时间的加减也可以使用+,-来表示  date + INTERVAL expr unitdate - INTERVAL expr unit
    * 聚合函数
        >Count();统计行的数量 COUNT(DISTINCT 列);去掉重复  
        >Sum();求累加和  
        >Max();求最大值  
        >Min();求最小值    
        >Avg();求平均值    
        >Group_concat()函数的值等于属于一个组的指定列的所有值，以逗号隔开，并且以字符串表示。如果没有group by子句，group_concat返回一列的所有值  
    * 加密函数
        >Md5('sss')==>9f6e6800cfae7749eb6c486619254b9c  
        >sha1('sss')==>bf9661defa3daecacfde5bde0214c4a439351d4d
    * 其他函数
        >Default(); 为字段赋值为默认值  
        >CAST()函数，类型转换函数它可以把一个值转化为指定的数据类型。类型有：BINARY,CHAR,DATE,TIME,DATETIME,SIGNED,UNSIGNED  
        >DATABASE()   返回当前数据库名  
        >BENCHMARK(count,expr)  将表达式expr重复运行count次  
        >CONNECTION_ID()   返回当前客户的连接ID  
        >FOUND_ROWS()   返回最后一个SELECT查询进行检索的总行数  
        >USER()或SYSTEM_USER()  返回当前登陆用户名  
        >VERSION()   返回MySQL服务器的版本  
        >isnull(val) 判断变量是否为null
2. 自定义函数，mysql中好像必须有返回值，没有返回值会报错。。。。
    * 语法
    ```sql
    SET GLOBAL log_bin_trust_function_creators=TRUE;
    DELIMITER $
    CREATE FUNCTION sayhello() RETURNS VARCHAR(20)
    BEGIN
	    RETURN 'Hello world';
    END $
    DELIMITER ;
    SET GLOBAL log_bin_trust_function_creators=FALSE;

    //执行函数
    SELECT sayhello();

    
    ```

    * 注意事项
        >1.函数是与当前的数据库绑定的，调用的时候需要在当前的数据库下，或者使用 数据库名.函数名();  
        >2.1148 错误原因分析: 
        mysql  mysql的设置默认是不允许创建子程序的(函数，存储过程)
        解决办法也有两种，
        第一种是在创建子程序(存储过程、函数、触发器)时，声明为DETERMINISTIC或NO SQL与READS SQL DATA中的一个，
        例如:  
        CREATE DEFINER = CURRENT_USER PROCEDURE \`NewProc\`()  
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DETERMINISTIC  
        BEGIN  
        #Routine body goes here...
        END;   
        有主从复制的时候 从机必须要设置  不然会导致主从同步失败
        第二种是信任子程序的创建者，禁止创建、修改子程序时对SUPER权限的要求，设置log_bin_trust_routine_creators全局系统变量为1。设置方法有三种:  
        1.在客户端上执行SET GLOBAL log_bin_trust_function_creators = 1;  
        2.MySQL启动时，加上--log-bin-trust-function-creators选贤，参数设置为1  
        3.在MySQL配置文件my.ini或my.cnf中的[mysqld]段上加log-bin-trust-function-creators=1
3. 函数的删除
    >drop function if exists sayhello;