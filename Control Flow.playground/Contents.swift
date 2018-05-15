//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport
/*
*** if문 ~
 * if condition {
 * ...
 * } else {
 * ...
 * }
*** for문 ~
 * for i=0; i < count; i++ {       +++ 이 부분은 삭제된 것 같은데..?
 * ...
 * } 또는
 * for item in collection {
 * ...
 * }
*** switch문 ~
 * switch value {
 * case a:
 * ...
 * case b:
 * ...
 * default:
 * ...
***/

//switch에서 case를 1...10 이런 식으로 설정할 수 있다.
//for문에서 array, Dictionary이 사용 가능하다.
//switch에서는 예외처리를 안해준 것이 존재하면 오류가 난다.

let myfriend :Set = ["혜윰", "지민", "석진"]
let wanserfiend :Set = ["JC", "혜윰", "완서"]

let transfer = myfriend.intersection(wanserfiend)

if transfer.count > 0 {
    print("아는 친구가 존재합니다.")
    print("그 친구(들)은 \(transfer)입니다.")
} else {
    print("아는 친구가 존재하지 않습니다.")
}

let myfriend2 :[String: Int] = ["혜윰": 1, "지민": 16, "석진": 10, "상현": 55]

for (name, num) in myfriend2 {
    switch num {
    case 1:
        print("가장 친한 친구는 \(name)입니다.")
    case 10...20:
        print("제법 친한 친구 \(name)")
    default:
        print("별로 안 친한 친구 \(name)");
    }
}





