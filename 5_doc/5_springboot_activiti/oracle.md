## oracle

查出所有人(不区分人员) 每个月上月和下月的总收入

select * from sale a inner join(select 年,max(销量) as 销量 from sale group by 年)
on a.年=b.年 and a.销量=b.销量

Select(Select Month From Table Where Month = To_Char(Sysdate,'mm'))月份,

(Select Sum(Income) From Table Where Month = To_Char(Sysdate,'mm'))当月收入,

(Select Sum(Income) From Table Where To_Number(Month) = To_Number(Extract(Month From Sysdate))-1) 上月收入,

(Select Sum(Income) From Table Where To_Number(Month) = To_Number(Extract(Month From Sysdate))+1) 下月收入 From Dual

查出重复记录

select rowid,bm,mc from a where a.rowid!=(select max(rowid) from a b where a.bm=b.bm and a.mc=b.mc);

9、where 后面条件顺序影响: 将范围小的条件放在前面

12、 in后面的列表中，将出现最频繁的值放在最前面

[sql面试题](http://www.jfox.info/sql-mian-shi-ti-mu-ji-da-an)

5.列出各门课程成绩最好的学生

select t1.stuid,t1.name,t1.subject,t2.maxscore from stuscore t1,

(select subject,max(score) as maxscore from stuscore group by subject) t2 

where t1.subject=t2.subject and t1.score=t2.maxscore

6.列出各门课程成绩最好的两位学生

select distinct t1.* from stuscore t1 where t1.id in 

(select top2 stuscore.id from stuscore where subject = t1.subject order by score desc)

order by t1.subject

7. 各科总分平均分

select stuid as 学号,name as 姓名,

sum(case when subject='语文' then score else 0 end) as 语文,

sum(case when subject='数学' then score else 0 end) as 数学,

sum(case when subject='英语' then score else 0 end) as 英语,

sum(score) as 总分,

(sum(score)/count(*) as 平均分) from stuscore group by stuid,name order by 总分 desc

10、列出数学成绩在第2-3名的学生

select t3.* from (select top 2 t2.* from (select top 3 name,subject,score,stuid from stuscore where subject='数学' order by score desc) t2 order by t2.score) t3

order by t3.score desc

12 课程 不及格(0-59)个， 良(60-80)个， 优(81-100)个

select subject,(select count(*) from stuscore where score<60 and subject=t1.subject) as 不及格,

(select count(*) from stuscore where score between 60 and 80 and subject=t1.subject) as 良,

(select count(*) from subscore where score>80 and subject=t1.subject) as 优 

from stuscore t1 group by subject