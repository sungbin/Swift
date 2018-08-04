//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

/**
Class
데이터 모델의 중요한 구성요소로써 Object를 만든다.
클래스는 객체지향 프로그래밍(OOP, Object Oriented Programming)의 바탕을 이룬다.

클래스로 만든 오브젝트는 Reference Type으로 동작하며, 할당시 복사되지 않는다.
하나의 인스턴스에 대한 레퍼런스를 공유한다.
인스턴스를 할당한 뒤 수정하면 원본과 할당된 곳 모두 수정됨
let으로 정의 해도 프라퍼티가 var이면 수정 가능
**/

// -> Class는 주소값을 공유한다.
// -> Class는 let으로 선언해도 내용물을 수정 가능하다. <->Struct와의 차이점
// -> Optional은 값이 있지 않아도 될 때에 사용한다. 무조건 값이 있어야 할 때에는 Optional처리를 해주지 않는다(..?)

class Status {
    var name:String = ""
    var phoneNumber:Int?
    var friend:String?
}

let sungbin:Status = Status()
sungbin.name = "sb"
sungbin.phoneNumber = 01012341234
sungbin.friend = "jb"
if let fr = sungbin.friend {
    print("\(fr)") }

sungbin.friend = "No"
if let fr = sungbin.friend {
    print("\(fr)") }
