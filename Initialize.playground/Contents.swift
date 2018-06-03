//: A Cocoa based Playground to present user interface

/**
 Initializing은 Class나 Struct 내부에 넣는 것임.
 마치 자바의 클래스의 constructor와 똑같은 개념임.
 다른점이 있다면 Swift에서의 Class의 Initianlizing이 더 어려움.
 **/

/**
 Initialize
 초기화 작업은 인스턴스가 가지고 있는 모든 스토어드 프라퍼티(Stored Property)들의 최초 값을 설정하는 것
 
 *스토어드 프라퍼티
 저장소를 가지고 있는 프라퍼티
 
 *컴퓨티드 프라퍼티
 저장소 없이 계산에 의해 값을 리턴하는 프라퍼티
 구조체의 초기화
 여러 개의 init 메소드 허용
 상속을 허락하지 않으므로 Class에 비해 상대적으로 단순.
 클래스의 초기화
 
 하나의 지정초기화 메소드
 여러 개의 편의 초기화 메소드 허용
 **/

import AppKit
import PlaygroundSupport

enum Fuel {
    case Gasoline
    case Diesel
    case LPG
}

class Car {
    let seats:Int
    let fuel:Fuel
    var mileage:Double = 0
    
    // 19~20번째 코드를 수용하는 인자를 선언해보세요.
    init(seats:Int, fuel:Fuel){
        //받은 인자들을 클래스 속성에 적절히 대입해보세요
        self.seats = seats
        self.fuel = fuel
    }
}

let mini01 = Car(seats: 5, fuel: .Diesel)
let mini02 = Car(seats: 5, fuel: .Gasoline)


