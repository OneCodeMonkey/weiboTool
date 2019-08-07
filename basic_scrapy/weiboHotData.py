# -*- coding: utf-8 -*-
from selenium import webdriver
# 要想调用键盘按键操作需要引入keys包
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
import MySQLdb
import time


# 调用环境变量指定的PhantomJS浏览器创建浏览器对象
driver = webdriver.PhantomJS()
# 如果没有在环境变量指定PhantomJS位置# driver = webdriver.PhantomJS(executable_path="./phantomjs"))

driver.get("https://s.weibo.com/top/summary?Refer=top_hot&topnav=1&wvr=6")

elements = WebDriverWait(driver, 10).until(
    EC.presence_of_all_elements_located((By.CLASS_NAME, "td-02"))
)

# 获取页面名为 wrapper的id标签的文本内容
data = driver.find_elements_by_class_name("td-02")

# 打印数据内容
for it in data:
    print(it.text)
# 打印页面标题
title = driver.title
print(title)

db = MySQLdb.connect(
    host = '192.168.188.254',
    user = 'root',
    passwd = '123456',
    db = 'weibo'
)

cur = db.cursor();
cur.execute("SELECT * FROM weibo_hot");
for row in cur.fetchall():
    print row[0], row[1], row[2], row[3], row[4], row[5], row[6]

db.close()

# 模拟登陆
