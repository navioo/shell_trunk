!/bin/sh

#2018-07-23
#navioo@163.com
#ping ip

check_params(){
	[ $params_count -ne 1 ] && echo 'need $1:ip' && exit 1
}

ping_ip(){
	ping -c 2 -w 2 $ip >/dev/null 2>&1
	#等同于 ping -c 2 -w 2 $ip 1>/dev/null 2>&1
	[ $? -eq 0 ] && echo "$ip is on" || echo "$ip is off"
}

#传入参数数量
params_count=$#
check_params
#获取第一个参数
$ip=$1
ping_ip

# $0 ： 命令本身
# $1-$n(注：>9需要{}包裹${}，以避免歧义) : 获取该位置参数
# $# ： 参数数量
# $* ： 合并参数列表字符串："$1 $2 ... $n"，含空格间隔
# $@ ： 参数列表（不合并，每个参数独立存在）：$1 $2 ... $n
# 0> ： stdin标准输入
# 1> ： stdout标准输出
# 2> ： stderr错误输出
# /dev/null ： 空设备文件
# 2>&1 : 不能有空格，将标准错误输出重定向到标准输出