#!/bin/bash

# 引数の個数チェック
if [ $# != 2 ]; then
	echo '引数エラー(自然数を2つ入力)'
	exit 1
fi

# 引数が文字列でないかどうかのチェック
expr $1 + $2 >&/dev/null
if [ $? -gt 1 ];then
	echo '引数が整数ではありません'
	exit 1
fi

# 引数が自然数かどうかのチェック
tmp=`expr $1 \* $2`
if [ $tmp -eq 0 ]; then
       echo '引数には自然数を指定してください'
       exit 1
fi
if [ $1 -lt 0 ]; then
       echo '引数には自然数を指定してください'
       exit 1
fi
if [ $2 -lt 0 ]; then
       echo '引数には自然数を指定してください'
       exit 1
fi

# 第一引数が第二引数より大きいことのチェック
a=$1
b=$2
if [ $a -lt $b ]; then
	tmp=$a;
	$a=$b;
	$b=$tmp;
fi

# ユークリッドの互除法
rem=$(($a%$b))
while [ $r -ne 0 ]
do
	$a=$b;
	$b=$rem;
	$r=$(($a%$b));
done

echo $b





