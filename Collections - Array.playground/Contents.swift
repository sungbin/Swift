//오류 수정 필요
//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

//Array는 직관적으로 사용 가능하다.

//예를들어 String type도 += 명령어 사용이 가능하다.
//+=으로 인덱스를 추가할 때는 Array += (index)가 아니라, Array += [(index)] 형식으로 해야한다.

//String에 index를 추가하는 방법은 +=말고도 Array.append로 추가할 수 도 있다.
//또한, Array.first, Array.last, Array[0]와 같은 방법으로도 접근이 가능하다.

var meetingRooms:Array<String> = ["AB", "CD"]
var groups:[Int] = [10, 9, 4, 2]

meetingRooms += ["EF"] //9번에서 언급한 부분

var currentSpeed:[Int] = [100]
currentSpeed += [10]

var speedHistory:[Int] = []
speedHistory += currentSpeed

let gpsSpeed0513 = 114.1
speedHistory.append(Int(gpsSpeed0513))

speedHistory.last

let historyBack = speedHistory
speedHistory += [150]
historyBack
