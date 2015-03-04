import cx_Oracle

conn = cx_Oracle.connect('zhgl/zhgl@192.168.1.107:1521/orcl')
cursor = conn.cursor ()
cursor.execute ("select * from dual")
row = cursor.fetchone ()
print (row[0])

cursor.close ()
conn.close ()
