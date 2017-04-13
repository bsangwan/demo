## oracle

select * from sale a inner join(select 年,max(销量) as 销量 from sale group by 年)
on a.年=b.年 and a.销量=b.销量

Select(Select Month From Table Where Month = To_Char(Sysdate,'mm'))月份,

(Select Sum(Income) From Table Where Month = To_Char(Sysdate,'mm'))当月收入,

(Select Sum(Income) From Table Where To_Number(Month) = To_Number(Extract(Month From Sysdate))-1) 上月收入,

(Select Sum(Income) From Table Where To_Number(Month) = To_Number(Extract(Month From Sysdate))+1) 下月收入 From Dual

查出重复记录

select rowid,bm,mc from a where a.rowid!=(select max(rowid) from a b where a.bm=b.bm and a.mc=b.mc);
