# import the modules
from pymysql import*
import xlwt
import pandas.io.sql as sql

# connect the mysql with the python
con = connect(user="root", password="", host="localhost", database="shoppingcart")

#get dat from the user

lower = input("please enter lower id: ")
upper = input("please enter upper id: ")

# read the data
sql_query = 'select * from products where id between '+lower+' and ' + upper
df=sql.read_sql(sql_query,con)

# print the data
def print_df():
    print(df)


# export the data into the excel sheet
def export():
    df.to_excel('ds.xls')
