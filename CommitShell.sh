#!/bin/bash

git add *.playground
git add .DS_Store

git add $1.playground

git commit -a -m "add $1 playground"

echo "$1라는 이름의 playground를 commit했습니다."
