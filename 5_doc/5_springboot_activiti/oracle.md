## oracle

select * from sale a inner join(select 年,max(销量) as 销量 from sale group by 年)

on a.年=b.年 and a.销量=b.销量
