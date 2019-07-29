import pyodbc
import MySQLdb
import plotly.plotly
import plotly.graph_objs as pg
 
host = 'localhost'
port = 3306
usr = 'root'
pwd = '966289loveace'
charset = "utf8"
dbid = 'vgsalesinyear'
cn = None
 
try:
    cn = MySQLdb.Connection(
        host = host,
        port = port,
        user = usr,
        password = pwd,
        database = dbid,
        charset = charset
        )
    cursor = cn.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("select * from VG_Basicinfo;")
    rows = cursor.fetchall()
    lists = [[],[],[],[]]
    for row in rows:
