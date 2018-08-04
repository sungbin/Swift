//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

//Tuple은 배열과 같은 것이다.
//C와 비교했을 때의 차이점은 여러가지 type을 typealias를 통해서 한 Tuple에 넣을 수 있다는 점이다.
//typealias는 interface와 struct, typedef를 짬뽕한 것과 비슷하다.

let time1 = (9,0,48)
//time.0로 9의 값을 꺼낼 수 있다.
let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)
//time2.h로 11의 값을 꺼낼 수 있다.

let duration = (time1, time2)
//이런식으로 아무렇게 넣어도 type변환을 잘 해준다.

let (start, end) = duration
let endHour = end.h

typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((9, 10, 23), (17, 8, 21))
print("We studied until \(today.end.h) today")
