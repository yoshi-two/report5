#!/bin/bash

# 引数が0個の時
result=$(./gcd.sh)
if [ $result = '引数エラー(自然数を2つ入力)' ] ; then
	echo 'OK(引数が0個の時)'
	exit 1
else
	echo 'NG(引数が0個の時)'
	exit 1
fi

# 引数が1個の時
result=$(./gcd.sh 12)
if [ $result = '引数エラー(自然数を2つ入力)' ] ; then
	echo 'OK(引数が1個の時)'
else
	echo 'NG(引数が1個の時)'
	exit 1
fi

# 引数が2個の時
result=$(./gcd.sh 1071 1029)
if [ $result = '21' ] ; then
	echo 'OK(引数が2個の時)'
else
	echo 'NG(引数が2個の時)'
	exit 1
fi

# 引数が3個の時
result=$(./gcd.sh 12 5 2)
if [ $result = '引数エラー(自然数を2つ入力)' ] ; then
	echo 'OK(引数が3個の時)'
else
	echo 'NG(引数が3個の時)'
	exit 1
fi

# 引数の一方が文字列の時
result=$(./gcd.sh 12 aaa)
if [ $result = '引数が整数ではありません' ] ; then
	echo 'OK(引数の一方が文字列の時)'
else
	echo 'NG(引数の一方が文字列の時)'
	exit 1
fi
result=$(./gcd.sh aaa 12)
if [ $result = '引数が整数ではありません' ] ; then
	echo 'OK(引数の一方が文字列の時)'
else
	echo 'NG(引数の一方が文字列の時)'
	exit 1
fi

# 引数の双方が文字列の時
result=$(./gcd.sh aaa bbb)
if [ $result = '引数が整数ではありません' ] ; then
	echo 'OK(引数の双方が文字列の時)'
else
	echo 'NG(引数の双方が文字列の時)'
	exit 1
fi

# 引数に負の数が含まれている時
result=$(./gcd.sh 12 -1)
if [ $result = '引数には自然数を指定してください' ]; then
	echo 'OK(引数に負の数が含まれている時)'
else
	echo 'NG(引数に負の数が含まれている時)'
	exit 1
fi
result=$(./gcd.sh -1 12)
if [ $result = '引数には自然数を指定してください' ]; then
	echo 'OK(引数に負の数が含まれている時)'
else
	echo 'NG(引数に負の数が含まれている時)'
	exit 1
fi

# 引数に０が含まれている時
result=$(./gcd.sh 12 0)
if [ $result = '引数には自然数を指定してください' ]; then
	echo 'OK(引数に０が含まれている時)'
else
	echo 'NG(引数に０が含まれている時)'
	exit 1
fi
result=$(./gcd.sh 0 12)
if [ $result = '引数には自然数を指定してください' ]; then
	echo 'OK(引数に０が含まれている時)'
	exit 0
else
	echo 'NG(引数に０が含まれている時)'
	exit 1
fi
