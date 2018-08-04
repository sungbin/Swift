//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

/**
 Struct는 Value Type.
 Value Type는 일반 Int와 같이 어떤 값을 넣을 때 값을 복사해서 넣는 개념.
 포인터(주소)를 공유하지 않기 때문에 다른 것에 영향을 미치지 않는 것을 뜻함.
 Struct도 Value Type이기 때문에 A=B를 하고 B의 값을 변경시켜도 A에 영향을 미치지 않는다.(Ex. 27 - 29줄)
 **/

struct Task{
    var title:String //title은 무조건 있어야하므로 optional처리를 안해줌.
    var time:Int?
}

var callTask = Task(title: "Call to Randy", time: 10*60)

var reportTask = Task(title: "Report to Boss", time: nil)
//reportTask.title = "Report to Boss"

var todayTask:[Task] = []
todayTask += [callTask, reportTask]
todayTask[1].time = 15*60

callTask.title = "Call to Tobby"

print("todayTask = \(todayTask), callTask = \(callTask)")


