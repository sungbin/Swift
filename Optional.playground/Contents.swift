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

/* +++ 05.16
 옵셔널 변수 안에 nil이 아닌 값이 존재한다고 확신할 때 사용하는 옵셔널 접근 방법
 
 하지만 개발자의 확신은 경험적으로 수많은 에러를 만들어 냄
 옵셔널을 무력화하는 시도임
 
 !가 많은 코드는 나쁜 코드다
 */

/* +++ 05.17
 Optional Binding
 if let으로 옵셔널이 아닌 새로운 상수를 만들어 사용
 새롭게 만들어진 상수는 옵셔널이 아니므로 편하게 사용
 Implicitly Unwrapped Optional
 옵셔널 사용을 편하게 하기 위한 편의장치
 어쩔 수 없이 옵셔널이지만 실행 중 항상 값을 가지는 게 거의 확실
 선언시에 !를 사용하면 옵셔널이지만 옵셔널이 아닌 것 처럼 사용
 */

var title : String = "Storyboard Prototyping"
var rating : [Int]? = nil
var supportURL : String? = nil

//print("\(title) has \(rating.count) rating. \r\nsupport web site : \(supportURL)")
// -> nill값에 접근하기 때문에 에러 발생.
// +++

supportURL = "handong.edu" //이것이 있을 때와 없을 때의 결과 차이를 보아라.

var bookDescription:String =  "\(title)"
if let theRatings = rating { //optional 해준 것에 !를 붙히기 귀찮기 때문에 이런 식으로 해줄 수 있는데, 이것을 optional binding
    bookDescription += "has \(theRatings.count) ratings."
}
if let theURL = supportURL{
    bookDescription += "\r\n support web page : \n\(theURL)"
}

print("\(bookDescription)")


