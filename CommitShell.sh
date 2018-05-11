#!/bin/bash

git add *.playground
git add .DS_Store

git add $1.playground

commit -a -m "add $1 playground"

echo "$1라는 파일을 add해서 추가했습니다."
