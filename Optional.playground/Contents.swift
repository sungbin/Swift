//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

/*옵셔널은 '값이 없는' 상태를 나타낸다. 스위프트를 처음 접하는 사람들을 곤혹스럽게 하는 파트.

//nil
'값이 없음'을 나타냄.
모든 타입의 변수는 nil을 가질 수 있다 (Int, 구조체 인스턴스, 오브젝트)
nil에 접근 시 프로그램이 크래시를 일으킨다. (= 값이 없는 인덱스에 접근하면 안된다.)
옵셔널 만들기

변수 타입 뒤에 ?를 붙이면 옵셔널이 된다
옵셔널로 선언된 변수는 접근 시에 특별한 문법이 필요하다*/

var title : String = "Storyboard Prototyping"
var rating : [Int]? = nil
var supportURL : String? = nil

//print("\(title) has \(rating.count) rating. \r\nsupport web site : \(supportURL)")
// -> nill값에 접근하기 때문에 에러 발생.


