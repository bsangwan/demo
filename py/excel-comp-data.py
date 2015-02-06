import pandas as pd
import numpy as np

df = pd.read_excel("excel-comp-data.xlsx")
df["total"] = df["Jan"] + df["Feb"] + df["Mar"]
sum_row = df[["Jan","Feb","Mar","total"]].sum()
df_sum = pd.DataFrame(data=sum_row).T

df_sum = df_sum.reindex(columns = df.columns)
df_final = df.append(df_sum,ignore_index=True)
df_final.tail()
#print df.head()
print sum_row
print df_sum
print df_final
df.head()