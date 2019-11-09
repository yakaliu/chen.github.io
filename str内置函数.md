## str内置函数 （查找类函数）
-字符串查找类，find，index，islower
- find:查找字符串中是否包含一个子串
- index：跟find的区别是 find没有找到是输出-1，index则是报错
- rfind,lfind: 从左查找还是从右查找
- `s="ni hao wo shi chenjia ni ai chenjia"`
  `s1="chenjia"`
  `s2="dan"`
  `s.find(s1)`
- `s.find(s2)`
- `s.index(s2)`
- #从指定位置开始查找
  `s.find(s1,22)`
- `help(str.rfind)`
  ##help 帮助函数

### 判断类函数
- 此类函数的特点是一般都用is开头，比如islower
- isalpha: 判断是否是字母，需要注意的是两点
    - 此类函数默认的前提是字符串至少包含一个字符，如果没有，同样返回Flase
    - 汉字被认为是alpha，所以，此函数不能作为区分英文字母还是汉字的标识，区分中英文请使用unicode码
    - 注意使用区别
- isdigit, isnumeric, isdecimal 三个判断数字的函数(最好不用）建议判断数字用正则表达式
- islower：判断是否大小写

###### 凡是除了字母外还有其它等都不是
```
s1 ="nihaoma"
s2 ="ni hao ma"
print(s1.isalpha())  #是
print(s2.isalpha())  #不是
```

`help(str.islower)`

```
#空格不影响
print(s1.islower())
s3="ni hao WO shi" #大小一起 False
print(s3.islower())
s4="NI SHI ZHU"
print(s4.islower()) #一大一小 False
```

### 内容判断类
- startswith/endswith : 是否以xxx开头或结尾
  - 检测某个字符串是否以某个子串开头，常用三个参数
  - suffix：被检查函数，必须有
  - start：检查范围的开始范围
  - end:检查范围的结束范围
  
- ```
  - islower/isupper:判断字符串
  s1 ="ni hao"
  s2 ="chen jia"
  s3 = "ni hao wo shi chen jia"
  print(s3.startswith(s1))
  
  
  ```

  ### 操作类函数
  - format
  - strip；这个函数主要作用是删除字符串两边的空格，还可以允许你去定义删除字符串两边的哪个字符，同样的是lstrip和rstrip，l表示左，r表示右，即删除字符串左边或右边制定字符
     - 注意此处的删除不是删除一个，是指从头开始符合条件的连续字符

# 算数函数
abs：绝对值
round：将浮点类型的数圆到最接近的整数
floor：往小的整数圆
ceil：往大的整数圆
sqrt：平方
   sqrt在复数方面有支撑，但是用sqrt时，要import cmath
