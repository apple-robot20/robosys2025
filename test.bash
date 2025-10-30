#!/bin/bash 
# SPDX-FileCopyrightText: 2025 Ryuichi Ueda 　　　　　
# SPDX-License-Identifier: BSD-3-Clausei

ng() {
	echo ${1}行目が違うよ
	res = 1

}

res=0

### NOMAL INPUT ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ]   || ng "LINENO"

### STRAGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]        || ng "LINENO"
[ "${out}" = "" ]   || ng "LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ]        || ng "LINENO"
[ "${out}" = "" ]   || ng "LINENO" 

[ "${res}" = 0 ] && echo OK
exit $res
