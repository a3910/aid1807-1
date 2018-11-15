from pymysql import connect


class MysqlHelp:
    def __init__(self, database, host="localhost",
                 user="root", password="123456", charset="utf8",
                 port=3306):
        self.database = database
        self.host = host
        self.user = user
        self.password = password
        self.charset = charset
        self.port = port

    # 连接数据库
    def open(self):
        # 创建conn
        self.conn = connect(host=self.host, user=self.user,
                          password=self.password, database=self.database,
                          charset=self.charset, port=self.port)
    
        # 创建游标cur
        self.cur = self.conn.cursor()

    # 关闭

    def close(self):
        self.cur.close()
        self.conn.close()
    # 执行SQL语句

    def workON(self, sql, l=[]):
        self.open()
        try:            
            self.cur.execute(sql, l)
            self.conn.commit()
            print(33333333333)
            print('ok')
        except Exception as e:
            self.conn.rollback()
            print('ko', e)
        self.close()
        # getALL查询方法:

    def getALL(self, sql, l=[]):
        try:
            self.open()
            self.cur.execute(sql, l)
            print('ok')
            result = self.cur.fetchall()
            return result
        except Exception as e:
            print("ko.1", e)
        self.close()


if __name__ == '__main__':
    mysql = MysqlHelp('db2')
    # mysql.open()
    # mysql.close()
    sql_insert = 'insert into sheng values(15,189000,"广西省");'
    mysql.workON(sql_insert)
    # sql_select = "select * from sheng where id=1;"
    # result=mysql.getALL(sql_select)
    # print(result)

    # data = mysql.getALL(sql_select,[1])
    # print(data)
