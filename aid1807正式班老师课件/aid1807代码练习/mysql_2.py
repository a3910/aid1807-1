# mysql_2.py

if __name__ == '__main__':
    mysql = MysqlHelp('db2')
    # mysql.open()
    # mysql.close()
    sql_insert = 'insert into sheng(s_name) values("广西省");'
    mysql.workON(sql_insert)
    # mysql.getALL()
    # print(result)all
    sql_select = "select * from sheng where id=%s;"
    data = mysql.getALL(sql_select,[1])
    print(data)