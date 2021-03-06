#!/bin/sh
#以行为单位的文本编辑工具
#格式：sed [-nef] '[动作]' [输入文件]
#-n：安静模式，只有经过sed处理的那行被列出来
#-e：多重编辑，sed -e '1,5d' -e 's/ab/cc/dd' filename
#-f：
#-i：直接编辑

#动作:
#a 新增, a 后面可以接字符串, 而这个字符串会在新的一行出现. (下一行)
#c 取代, c 后面的字符串, 这些字符串可以取代 n1,n2之间的行
#d 删除, 后面不接任何东西
#i 插入, 后面的字符串, 会在上一行出现
#p 打印, 将选择的资料列出, 通常和 sed -n 一起运作 sed -n '3p' 只打印第3行
#s 取代, 类似vi中的取代, 1,20s/old/new/g

#举例:
sed '1d' abc #删除 abc 档案里的第一行, 注意, 这时会显示除了第一行之外的所有行, 因为第一行已经被删除了
(实际文件并没有被删除,而只是显示的时候被删除了)
sed -n '1d' abc #什么内容也不显示, 因为经过sed处理的行, 是个删除操作, 所以不现实.
sed '2,$d' abc #删除abc中从第二行到最后一行所有的内容, 注意, $符号正则表达式中表示行末尾, 但是这里并>没有说那行末尾, 就会指最后一行末尾, ^开头, 如果没有指定哪行开头, 那么就是第一行开头
sed '$d' abc #只删除了最后一行, 因为并没有指定是那行末尾, 就认为是最后一行末尾
sed '/test/d' abc #文件中所有带 test 的行, 全部删除
sed '/test/a RRRRRRR' abc #将 RRRRRRR 追加到所有的带 test 行的下一行 也有可能通过行 sed '1,5c RRRRRRR' abc
sed '/test/c RRRRRRR' abc #将 RRRRRRR 替换所有带 test 的行, 当然, 这里也可以是通过行来进行替换, 比如 sed '1,5c RRRRRRR' abc
