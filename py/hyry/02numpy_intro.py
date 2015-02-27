# _*_ coding: utf-8 _*_
"""
演示NumPy数组的一些基本功能
"""
import numpy as np
from operator import itemgetter

a = np.array([1,2,3,4])
b = np.array([5,6,7,8])
c = np.array([[1,2,3,4],[4,5,6,7],[7,8,9,10]])
print(a)
print(b)
print(c)
print(a.shape)
print(c.shape)
c.shape = 4,3
print(c)
c.shape = 2,-1
print(c)
d = a.reshape(2,2)
print(d)
a[1] = 100
print(d)
print(c.dtype)
fe = np.array([1,2,3,4],dtype=np.float)
print(fe)
de = np.array([1,2,3,4],dtype=np.complex)
print(de)
print(set(np.typeDict.values()))
print(np.arange(0,1,0.1))
print(np.linspace(0,1,10))
print(np.linspace(0,1,10,endpoint=False))
# 10的log从0到2分成5份
print(np.logspace(0,2,5))
# 只分配内存，不对其进行初始化
print(np.empty((2,3),np.int))
print(np.zeros(4,np.float))
# 像变量a一样的数组
print(np.zeros_like(a))

# 字符操作
s = "abcdefgh"
print(np.fromstring(s,dtype=np.int8))

def func2(i,j):
	return(i+1)*(j+1)

a = np.fromfunction(func2,(9,9))
print(a)

# 存取元素
a = np.arange(10)
print(a)
print(a[5])
print(a[3:5])
print(a[:5])
#数组从后往前数
print(a[:-1])
a[2:4] = 100,101
print(a)
print(a[0:9:2])
print(a[::-1])
print(a[5:1:-2])
b = a[3:7]
print(b)
b[2] = -10
print(b)
print(a)
x = np.arange(10,1,-1)
print(x)
print(x[np.array([3,3,1,8])])
# 布尔数组
x = np.arange(5,0,-1)
print(x)
print(x[np.array([True,False,True,False,False])])

aa = {'mike':'male','kathy':'female','steve':'male','hillary':'female'}
bb = {'mike':'male','ben':'male','hillary':'female'}
print(aa.keys())
#print(aa.keys() - bb.keys())
aa = {"a":"1","sss":"2","ffdf":"5","ffff2":"3"}
sort_aa = sorted(aa.items(),key=itemgetter(1))
print(sort_aa)

params = {"server":"mpilgrim","database":"master","uid":"sa","pwd":"secret"}
print( ["%s = %s " % (k,v) for k,v in params.items()])