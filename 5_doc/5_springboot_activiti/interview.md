## basic

| Alexia  |   |   
|:--:|---|
|  加载次序 | 1、类加载后从父类到子类执行被static修饰的语句 |   
|   | 2、当static执行完后再执行main方法 |   
|   | 3、如果有语句new了对象将顺序执行 构造代码块、构造函数 |  
|  构造 | 普通类方法可以和类名同名，和构造方法的唯一区分就是，<span style="color:blue">构造方法没有返回值</span> |  
|  线程 | start()启动一个线程,当调用start方法后，系统才会开启一个新的线程，进而调用run()方法来执行任务。而单独调用run()就跟调用普通方法是一样的，已经失去了线程的特性 |
| 12  | 0.6332的数据类型是 double。<span style="color:blue">默认为double</span> 如果为float需要加上f显示说明 |
| 13 | 以InputStream(输入)/OutputStream(输出)为后缀的是<span style="color:blue">字节</span>流 |
|   | 以Reader/Writer为后缀的是<span style="color:blue">字符</span>流 |
| 14 | 接口可以修饰为final和 abstract |
|   | final和 abstract不能同时出现 |
|   | 只能定义常量.public static final ,且必须赋值 |
|  接口 | 接口的方法默认是public abstract |
|   | 接口中不可以定义变量即只能定义常量(加上final修饰就会变成常量) public static final 常量，且必须赋初值 |
|   | final和 abstract不能同时出现 |



*	java异常的基类为java.lang.Throwable,java.lang.Error和java.lang.Exception**继承Throwable**

*	1、 类加载后从父类到子类执行被static修饰的语句
* 	2、 当static执行完后再执行main方法
*  3、 如果有语句new了对象将顺序执行 构造代码块、构造函数
*  普通类方法可以和类名同名，和构造方法的唯一区分就是，**构造方法没有返回值**

<p><code>&amp;#8212;</code> is the decimal-encoded
equivalent of <code>&amp;mdash;</code>.</p>

Roses are \textcolor{red}{red}, violets are \textcolor{blue}{blue}.


### interview



*	[Java开发中的23种设计模式详解(转)](http://www.cnblogs.com/maowang1991/archive/2013/04/15/3023236.html)
	*  [那些年，我们一起写过的单例模式
](http://geek.csdn.net/news/detail/186671)
	*	[IBM 终点](http://blog.csdn.net/zhangerqing/article/details/8763583)


[dongchuan.gitbooks](https://dongchuan.gitbooks.io/java-interview-question/java/sleep_and_wait.html)

[java面试精选题](http://www.cnblogs.com/hnlshzx/p/3491587.html)

[finally的分析 IBM](https://www.ibm.com/developerworks/cn/java/j-lo-finally/)

### Alexia

[finally 分析通俗版](http://www.cnblogs.com/lanxuezaipiao/p/3440471.html)

[精选30道Java笔试题解答](http://www.cnblogs.com/lanxuezaipiao/p/3371224.html#3612102)

### programcreek

[面试10大算法汇](http://www.programcreek.com/2012/11/top-10-algorithms-for-coding-interview/)

[面试10大算法汇总＋常见题目解答](http://www.programcreek.com/2012/12/面试10大算法汇总＋常见题目解答/)

[Top 10 questions of Java Strings](http://www.programcreek.com/2013/09/top-10-faqs-of-java-strings/)

## springcloud.cn

[didispace](http://blog.didispace.com/)

[xujin](http://blog.xujin.org)

## programcreek

### String StringBuffer StringBuilder

[java-convert-a-file-into-a-string](http://www.programcreek.com/2011/11/java-convert-a-file-into-a-string/)

### Multi-threading thread and concurrency

[How to make a method thread-safe ](http://www.programcreek.com/2014/02/how-to-make-a-method-thread-safe-in-java/)

## programcreek Java Design Pattern

[Singleton](http://www.programcreek.com/2011/07/java-design-pattern-singleton/)

	final 什么意思具体怎么用?

[decorator-your-girlfriend](http://www.programcreek.com/2012/05/java-design-pattern-decorator-decorate-your-girlfriend/)

	BufferedReader input = new BufferedReader(new InputStreamReader(System.in));


## programcreek simple java

### 7、I/O & Database

[fileoutputstream-vs-filewriter](http://www.programcreek.com/2011/03/fileoutputstream-vs-filewriter/)

[decorator-your-girlfriend](http://www.programcreek.com/2012/05/java-design-pattern-decorator-decorate-your-girlfriend/)

## [Thread and Concurrency](http://www.programcreek.com/java-threads/)

[how-to-make-a-method-thread-safe-in-java](http://www.programcreek.com/2014/02/how-to-make-a-method-thread-safe-in-java/)

[convert a file to byte array,then convert byte array to a file](http://www.programcreek.com/2009/02/java-convert-a-file-to-byte-array-then-convert-byte-array-to-a-file/)

[notify-and-wait-example](http://www.programcreek.com/2009/02/notify-and-wait-example/) Producer

*	[Java多线程中join方法的理解](http://uule.iteye.com/blog/1101994)
* [inter-thread-communiction-wait-notify-java-multi-thread](http://netjs.blogspot.com/2015/07/inter-thread-communiction-wait-notify-java-multi-thread.html)

[java-reflection-tutorial](http://www.programcreek.com/2013/09/java-reflection-tutorial/)




## importnew

[最近5年133个Java面试问题列表](http://www.importnew.com/17232.html)

## 博客园

[zdy0_2004](http://www.voidcn.com/blog/zdy0_2004/article/p-6407997.html)


### interview

[面试总结](http://www.voidcn.com/blog/zdy0_2004/article/p-6494594.html)

[崔永超 2016寄语](http://blog.didispace.com/kai-pian-wo-de-2015/)

[java集合类接口](https://github.com/CarpenterLee/JavaLambdaInternals/blob/master/3-Lambda%20and%20Collections.md)

[java面试题](http://www.voidcn.com/blog/zdy0_2004/article/p-6407997.html)

### 数据库优化方法

### 事物隔离的级别

### spring事物控制的级别

[spring事物配置的5种方式](http://blog.csdn.net/hjm4702192/article/details/17277669)

[Transaction](https://hit-alibaba.github.io/interview/basic/db/Transaction.html)

[美团技术团队 innodb-lock](http://tech.meituan.com/innodb-lock.html)

### AOP

[AOP的实现机制](http://www.iteye.com/topic/1116696)

[动态代理的使用及其实现机制](http://www.cnblogs.com/liuling/archive/2013/05/21/proxyPattern.html)

[java的动态代理](http://www.cnblogs.com/techyc/p/3455950.html)

[JAVA 反射](http://www.cnblogs.com/qingwen/p/5213548.html)

[AOS实现机制 iteye 清英 alibaba](http://www.iteye.com/topic/1116696	)

[j-lo-proxy1](https://www.ibm.com/developerworks/cn/java/j-lo-proxy1/)

### thread

[java thread 总结](http://www.cnblogs.com/DreamSea/archive/2012/01/11/JavaThread.html)

### oracle

[oracle](http://www.360doc.com/content/10/0915/09/3363160_53763251.shtml)

