## oracle

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