//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

/**
 함수의 기본구조
 func functionName (parameter : Type) ->returnType
 {
 ...
 return ...
 }
 
 or
 
 func functionName ()  //파라미터와 리턴형식이 없는 함수, 리턴형식 void는 생략가능.
 {
 ...
 }
 **/

/*
 함수는 입력되는 값에 특정한 작용을 해서 출력값을 만들어 주는 대응 관계이다.
 
 Swift 함수의 선언
 
 parameterName을 통해 함수로의 입력값이 들어가고, parameter로 사용할 수 있는 타입이 함수 선언시에 결정된다.
 returnType은 이 함수의 실행결과로 돌려줄 값의 타입이며 이 역시 함수 선언 시에 결정된다.
 ratingRecord 함수
 매개변수 : history라는 이름의 Double 타입 배열
 리턴타입 : 3개의 더블값으로 구성된 튜플
 */

var ratings : [Double]
ratings = [4.5, 6.0, 8.0, 9.5]

func ratingrecord (history : [Double]) -> (average:Double, min:Double, max:Double){
    var sum = 0.0, min = history[0], max = history[0]
    
    for value in history{
        if min>value { min = value}
        if max<value { max = value}
        sum += value
    }
    let average = sum / Double(history.count)
    return (average, min, max)
}

let record = ratingrecord(history:ratings)
print("average: \(record.average)\nmin: \(record.min)\nmax: \(record.max)")

