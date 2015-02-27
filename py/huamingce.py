import pandas as pd
import numpy as np

df = pd.read_excel("2.xlsx")
#df['date'] =pd.to_datetime(df['date'])
print df.dtypes
print df.head()
#print df[df["account number"]==307599].head()
df.head()