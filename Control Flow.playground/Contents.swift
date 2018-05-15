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


let myfriend :Set = ["혜윰", "지민", "석진"]
let wanserfiend :Set = ["JC", "혜윰", "완서"]

let transfer = myfiend.intersection(wanserfiend)

if transfer.count > 0 {
    print("아는 친구가 존재합니다.")
    print("그 친구(들)은 \(transfer)입니다.")
} else {
    print("아는 친구가 존재하지 않습니다.")
}

for friend in myfriend {
    print("나의 친구 \(friend)")
}





