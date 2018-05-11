//: Playground - noun: a place where people can play

//스위프트는 엄격한 문법을 준수한다.
//print 구문 내에서 \n(내용)이라는 구문이 존재한다

//서로 다른 type 변환은 수동으로 해줘야한다.
//문법은 type [variable]이다.

//Int와 UInt는 둘 다 max와 min이라는 상수를 가지고 있다.

import Cocoa

let name:String = "sungbin"
var greeting = "Hello"

greeting += " " + name

let characers = name //name.characters 는 이제 지원 안함
let count = characers.count

let url = "www.hisnet.net"
let hasProtocol = url.hasPrefix("http://")

print("\n(name)")

var currentSpeed = 100
currentSpeed += 10
currentSpeed += Int(20.5)

let IntMax = Int.max
let UIntMax = UInt.max
let IntMin = Int.min
let UIntMin = UInt.min

let pi = 3.14
let divider = 2
let halfPI = pi / Double(divider)
