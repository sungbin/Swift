//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

// -> 질문.. enum은 struct에서만 사용 가능한 것인가??

/**
 연관성 있는 값들의 그룹을 만들어 Type-Safe 하게 사용하는 것이다.
 
 여러 다른 언어에서 일련의 값에 일대일 대응되는 Enum을 정의해서 사용
 
 Task의 상태 값을 나타내기 위해 0, 1, 2등의 정수값을 사용
 보다 직관적으로 0은 READY, 1은 COUNTING, 2는 PAUSED, 3은 DONE과 같이 Enum으로 정의해서 사용하는 방식
 Swift에서 Enumeration은 더욱 강력한 기능을 가진다
 
 1st class type
 매개변수나 리턴타입으로 사용
 메소드를 가진다거나 프로토콜을 준수
 **/

struct Status {
    var title:String
    var time:Int?
    
    var type:StatusType
    enum StatusType {
        case Call
        case Report
        case Meet
        case Support
        
        var typeTitle:String {
            get {
                let titleString:String
                switch self {
                case .Call:
                    titleString = "Call"
                case .Meet:
                    titleString = "Meet"
                case .Report:
                    titleString = "Report"
                case .Support:
                    titleString = "Support"
                }
                return titleString
                
            }
        }
    }
}

var callStatus = Status(title: "Call to JB", time: 10*60, type:.Call)
var reportStatus = Status(title: "Report to JB", time: nil, type:Status.StatusType.Report)


